---
title: Welcome to my blog
date: 13:29 08/11/2025

hero_classes: text-light title-h1h2 overlay-dark hero-large parallax
hero_image: banner.jpg
show_sidebar: true

taxonomy:
    category: 
        - blog
    tag: 
        - misc
        - blog
published: true
---

You will find here:
- Stories of my professional projects and side projects.
- Articles about engineering good practices.
- Articles about tools or technologies I love.
- Various reflections and rambling... as long as it's at least remotely IT related, it goes here!

===

!!! There's no comment section on this blog (yet?). But if you want to react to an article I wrote, or simply reach me, you can do so via [LinkedIn](https://www.linkedin.com/in/quentin-bonnet-1235a8b8/) or [email](mailto:quentin@bonnet.software)

### Tech stack

This website is powered by [grav](https://github.com/getgrav/grav), a nice simple open source CMS. It was designed by my loving wife Caroline Bonnet, known by professionals as [Caroline Monin](https://cmonin.dev).

What's great about grav, among other things, is its pure plain text mode for pages content. This blog is a simple arborescence of .md files. I host them on a dedicated [git repository](https://github.com/le-quentin/blog), and very easily deploy them to the website via sftp. It gives the blog's content all the power of git (simplicity, portability, powerful history) while making it vendor agnostic, which always feels good.

The production website is hosted on a [Hostinger](https://www.hostinger.com) VPS. I deploy it via [Ansible](https://docs.ansible.com) as part of my [public infra](https://github.com/le-quentin/public-infra) IaC repository.

Last but not least, the site is served via [Cloudflare](https://www.cloudflare.com) DNS proxy, which offer an astonishing feature set for free, among which a CDN with caching, anti DDoS protection, as well as basic monitoring features.
