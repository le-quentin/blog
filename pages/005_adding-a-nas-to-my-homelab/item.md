---
title: "Adding a NAS to my homelab"
date: 16:00 01/02/2026

hero_classes: text-dark title-h1h2 overlay-dark hero-large
hero_image: banner.png
show_sidebar: true

taxonomy:
    category: 
        - blog
    tag: 
        - homelab
        - side projects
        - linux
        - devops
published: false
---

TODO: an article about the OpenWrt router, the choice of roaming vs mesh, etc... but only when I can give actual feedback, so in a couple months

Adding a NAS to my homelab: what I considered, chose, and why.

===

## Requirements

Media access (not runtime disks).

Focus on: reliability, low power consumption, easy maintenance, *free and open source* (no vendor locking whatsoever)

## Infra choice

Replace the existing server with the NAS, or run both in parallel? 

=> Ideally: dedicated NAS in parallel with the main server (separation of concerns), but lower power consumption is key!

## Hardware

Alternatives:

1- buy a commercial product, and flash a free NAS OS onto it => I wanted to do it to save time, but nothing was satisfying (either way too expensive, or too low speced, or flaky free OS support)
2- Distributed storage (SAN with something like Ceph) => way way *way* overkill and hyper complex, not my use case
3- DIY NAS => ended up doing this. Takes time but at least I can future proof it further (modular hardware), and I can optimise power consumption (it's not that easy to find reliable data about commercial NAS consumption)

Once that's settled, I must choose the hardware. A whole article could be dedicated about the choices I made, but in short: [list the hardware here and explain the AliExpress choice].

## Software

### TrueNAS

Looked seducing but => ZFS only, and it's made for high performance systems, it writes all the time with scrubs etc, and it contradicts my lower power requirement. Not adapted to my case.

### OpenMediaVault

Simple, effective, allows all file systems => that's the one.

### Bare linux (i.e. Proxmox with shared storage setup)

Super flexible but more time consuming especially if i wanna make everything right. Plan B to keep in mind if nothing else is satisfying.

## Virtualized or bare-metal?

Since I ended up getting 32GB RAM, I'll have a lot of free RAM with OMV. Also, sporadic media access won't saturate the CPU at all... in other words, I should 100% try to take advantage of the "hardware leftovers". And as always, it means I'd like to virtualize!

Since I already use Proxmox and it can manage clusters etc... the natural solution would be to install Proxmox VE on the NAS, and then inside it run an OMV VM. In *theory* it can work with PCIe passthrough: basically, you give the VM ownership of the SATA controller, and it's handling it as if it was bare metal. Only with this virtualisation of the NAS OS itself can be considered.

So: I'll try that. If it's reliable, perfect! If it's not, plan B: install OMV on bare metal, and then with extra packages run KVM to run VMs inside OMV. This will be less practical for me (can't reuse existing proxmox-related scripts and tooling, can't use unified proxmox UI...), but it'll work too and at least I know I get the best hardware compatibility possible.

### Virtualized with PCIe passthrough

#### Host setup

We need some specific kernel parameters for proper passthrough, edit `/etc/default/grub`, adding `intel_iommu=on iommu=pt` to cmdline:
```
GRUB_CMDLINE_LINUX_DEFAULT="quiet intel_iommu=on iommu=pt"
```

Then apply:
```
update-grub
reboot
```

#### VM settings

q35 machine, OVMF BIOS

Didn't work. Moved to regular machine and BIOS => same.

My conclusion is the motherboard isn't compatible with PCI passthrough of the SATA controller... People who have this config seem to have a motherboard with a PCIe HBA, in other words a dedicated SATA controller that you attach to your motherboard via a PCIe port. And then passthrough works fine.

I could consider adding a M2 HBA if it exists (my MB doesn't have a PCIe port...)... but I think that as long as I'm using this mobo, bare metal OMV is actually way simpler. And at this point, I would rather have a little more incovenient maintenance than risk flakiness and data loss.

### Virtualized with disks passthrough

Might be a good middleground solution, still enabling virtualising OMV at the cost of extra precautions:
- Make sure we don't touch the disks *ever* from Proxmox host or another VM (access isn't exclusively given to the VM, compared with PCIe passhtrough). Some udev rules could help secure this.
- Make sure SMART data works
- Make sure performance is good and steady

If all these conditions are met, maybe we can consider this. Otherwise => bare metal

Conclusion: it works, but SMART data isn't visible from the VM. And it's very important, because that's what enables disks monitoring, so also alerting in case of disk failure. In other words, it's absolutely key for data safety. 

I could look into more or less hacky ways to monitor SMART on the proxmox host and send the data to the VM but... I don't look this kind of idea. I don't want hacks in the disk safety area in order to make VMs run. This is a NAS before anything else. So I decided to cut my losses, and install OMV bare metal... when considering future hardware, I'll make sure to pick something with good PCIe passhtrough compatibility! Probably a PCIe HBA with many SATA ports, these exist and are widely adopted in the community.

### Bare metal

This is pretty straighforward. Install OpenMediaVault with proper network configuration. Restart the machine. Reach OMV GUI on HTTP port.

Only tricky part, had to reinit the mail sender because it blocked updates from posting in the GUI.

Simply followed [this article](https://www.openmediavault.org/?p=4004). During the postfix config, we use a satellite setup, and we can input the smtp server details there.

Then to really apply and enable, in the GUI itself, System>Notifications>Settings.

## File system

Now that the NAS OS is set up the last but not least important of questions remains: how do we share the disks? In other words: which filesystem will we use? ZFS was already eliminated because of the power consumption aspect, but there are still several contenders.

### ext4

### btrfs

The one I want to go with, mostly for its auto-cleaning scrub feature: btrfs ensures data integrity with checksums, and in case of an error, it fixes itself. So basically, you get a protection against "bit rot" (the fact that bits randomly swap state in the disk, which can happen over time with HDDs).

=> using btrfs RAID1, and not Linux mdadm RAID with btrfs on top (because in that case btrfs will see only one disk, and there will be no checksum verification). For BTRFS, the RAID implementation is not the same, and RAID1 basically achieves what traditional RAID10 does, with added possibility of using odd number of disks and different disks sizes (so easier to extend), because the copies are spread on all disks... At the cost of slightly more risks of data loss, because data is spread so any pair of disks failing will lose data.

Its data safety guarantees seems to be a somewhere between traditional RAID10 (where you lose data only if two disks in the same RAID1 volume fail together), and RAID5 (where you must recover your disks by reading every bit of all other disks): here, when you rebuild, you will fail only if you get a URE (unrecoverable read error) on a chunk whose other copy was on the dead disk.

cons:
- if any 2 disks fail => data lost
- maybe slightly less battle-tested and documented as md raid10
pros: 
- When losing one disk, can rebalance on 3 remaining ones to get redundancy back (provided there's enough free space left)
- Can add just one disk (not necessarily pairs)
- Can add disks of different sizes

### xfs

### ntfs

## Shares

NFS, with async option (sync had terrible performance, and async is safe enough for media files, worst case scenario being a download failing to copy after a bad shutdown, i can live with that).

In the end I get ~50MB/s bandwidth which is still way way lower than my disks potential... so it's time to dig into...

## Performance

### Direct IO on the RAID array

On the host directly, testing the raid array performance directly, moving to the nfs share directory and running: 
```sh
dd if=/dev/zero of=./test-write bs=1M count=5000 oflag=direct conv=fdatasync
^[ac5000+0 records in
5000+0 records out
5242880000 bytes (5.2 GB, 4.9 GiB) copied, 66.0018 s, 79.4 MB/s
```

Good but not great... In OMV I set APM to 127 (default value, allows spindown but gives regular power to disk), and noise mode to "performant". But write cache isn't enabled by default in OMV, and after enabling:
```sh
dd if=/dev/zero of=./test-write bs=1M count=5000 oflag=direct conv=fdatasync
5000+0 records in
5000+0 records out
5242880000 bytes (5.2 GB, 4.9 GiB) copied, 29.3315 s, 179 MB/s
```

Now we're talking! From what I can find online, write speed of a 7200RPM HDD is around 100MB/s... and since we have data split on the equivalent of two disks, 180MB/s is around 2x that, so it makes sense! We seem to be at our peak here.

Trying read spead:
```sh
dd if=./test-write of=/dev/null bs=1M iflag=direct
5000+0 records in
5000+0 records out
5242880000 bytes (5.2 GB, 4.9 GiB) copied, 27.6957 s, 189 MB/s
```

This is good, and well enough for my use case... but I am a bit puzzled, because with RAID1 you could expect around 2x faster read than write (since you can read from all disk simultaneously, data being evenly spread across all of them) => no, apparently btrfs read performance isn't optimal, it doesn't "load balance" evenly. 

To see what I will get in a more real life scenario, testing parallel io using `fio`:

Write:
```sh
 fio --name=parallel-write --directory=. --rw=write --bs=1M --size=2G --numjobs=4 --direct=1 --group_reporting
parallel-write: (g=0): rw=write, bs=(R) 1024KiB-1024KiB, (W) 1024KiB-1024KiB, (T) 1024KiB-1024KiB, ioengine=psync, iodepth=1
...
  WRITE: bw=199MiB/s (209MB/s), 199MiB/s-199MiB/s (209MB/s-209MB/s), io=8192MiB (8590MB), run=41093-41093msec
```

Read:
```sh
io --name=parallel-read --directory=. --rw=read --bs=1M --size=2G --numjobs=4 --direct=1 --group_reporting
parallel-read: (g=0): rw=read, bs=(R) 1024KiB-1024KiB, (W) 1024KiB-1024KiB, (T) 1024KiB-1024KiB, ioengine=psync, iodepth=1
...
Run status group 0 (all jobs):
   READ: bw=364MiB/s (382MB/s), 364MiB/s-364MiB/s (382MB/s-382MB/s), io=8192MiB (8590MB), run=22508-22508msec
```

So I'm seeing a roughly 2x increased read performance, but only a ~17% better write performance. It makes sense: reads get distributed, but writes are bottlenecked by the need to replicate chunks... I'm not a BTRFS RAID expert by any means, but it makes sense to me, and even more importantly this is more than enough performance for my use case.

Now, the end to end test, by checking the speed over the NFS connection.

### Real use case IO: NFS share

Running the same tests as before with fio, only this time over the NFS connection:
```sh
   WRITE: bw=110MiB/s (116MB/s), 110MiB/s-110MiB/s (116MB/s-116MB/s), io=8192MiB (8590MB), run=74202-74202msec
   READ: bw=112MiB/s (118MB/s), 112MiB/s-112MiB/s (118MB/s-118MB/s), io=8192MiB (8590MB), run=73043-73043msec
```

...that's more like it! We seem to be hitting the NFS bottleneck now, with both write/read maxing out around 120MB/s. It's, once again, more than enough for my use case, but while I'm at it I'd like to understand how it will handle multiple connections... will two different containers read at 120MB/s each, or will they share that bandwidth at 60MB/s each? My guess is: the former with two separate nfs shares, the latter with just one. But let's check.

After investigation, I was dead wrong. In async mode, NFS isn't the bottleneck, network is! My NAS has a 2.5Gbps port, but my miniPC hosting the VM has a 1Gbps port... 1Gbps=125GB/s so... that's our bottleneck! If I ever feel too slow because of thisI can update the NIC to a 2.5Gbps one, but I'm pretty sure this will actually never be limiting.

All good now!

## Virtualization

We installed OMV bare metal... but it doesn't mean we can still make use of the left CPU/RAM! OMV can actually run KVM with the "extras" package. So now the NAS itself (the most important part) is functional, let's try to add VMs to our new machine! Maybe in a separate article
