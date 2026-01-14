---
title: "Stack Overflow is dying"
date: 12:00 01/08/2026

hero_classes: text-dark title-h1h2 overlay-dark hero-large
hero_image: banner.png
show_sidebar: true

taxonomy:
    category: 
        - blog
    tag: 
        - AI
        - opinion
published: true
---

If I am pretty certain AI will not replace developers, not any more than Stack Overflow ever did... it seems that AI is replacing Stack Overflow itself. It is a dramatic fact for developers, and even for AI itself. Let me explain.

## Why it was so great

First, let's briefly go back to what Stack Overflow *was*, and why it was such a great thing.

With the internet came the possibility of instant access to knowledge. Developers, who were probably tired of browsing through thousand-page-long documentation, obviously saw it as a big opportunity. The tricky thing with knowledge is, it's not just a random set of facts and opinions: it is the true and useful information that hides inside. So the more data you get, the more potential knowledge you also get; but the trickier it becomes to actually separate the wheat from the chaff, to extract knowledge from all the noise, bad ideas, or outright false information.

It means that value does not come directly from the volume of accessible data; no, it comes from the ability to get the useful information from it, the needle in the haystack if you will. That's what the founders of Google understood. Stack Overflow operated in that same area, but instead of ranking pages based on their reputation defined by the number of external links pointing to them, it ranked technical questions and answers with a system of upvotes and downvotes. Users themselves were graded with a reputation system, based on the quality of questions/answers they previously posted. That, coupled with a strict moderation policy, made Stack Overflow incredibly useful to all developers everywhere.

Of course, it was not perfect. The crowd, even when somewhat educated, is not always right. Moderation, although necessary, can become a little obtuse over time, or try to preserve the quality of the content to a degree that can be counterproductive to the community it had created. But, despite its imperfections, it worked. In fact, it worked so well that as a developer, this was a very frequent situation:
- You get an unexpected error in your code
- You summon all your cognitive abilities, and you copy/paste the error message in Google
- First result is a Stack Overflow post
- The author is in the exact same situation as you
- The first answer (answers being sorted by their score) gives you a good solution

It worked so well that the concept was extended to other areas of IT, then to things completely outside IT. It basically became a galaxy of functional question/answer websites, under the [stackexchange.com](https://stackexchange.com) umbrella.

## Why it is dying

Actually, we might as well call it dead already: as you can see in the banner of this article (showing the number of questions posted on Stack Overflow over time), the website is back to a level of traffic it hadn't seen since... its first month. "Oof", as I might have just heard you say.

So, how can such a fine system die completely, just like that?

Well... it was actually something to expect.

When ChatGPT came out, of course developers tried it. And of course, they tried using it just like they did with Stack Overflow. And of course, GPT being trained on basically the whole internet, including Stack Overflow, it had almost all the answers. Now imagine you are a developer, and you're presented with the following choice:
- Search on StackOverflow, sometimes find the answer straight away, sometimes need to browse and try several answers, sometimes need to post yourself; in which case you'll need to wait for an answer, if you don't see your post being closed because it didn't comply with one of the numerous moderation rules, that is.
- Ask ChatGPT, get a polite response in 5 seconds, and a correct one most of the time.

The way it turned out was pretty obvious from the start, wasn't it?

## Why it is bad for developers

An LLM, as I explained in a previous article, is kind of like a sophisticated autocomplete model. As such, it can be very powerful: in our case, as we said, your questions will mostly get completed with correct answers. That sounds good, doesn't it?

Well, it *is* good, in a lot of cases. However, it can also give you bad answers, or even absurd ones via "hallucinations". But, even more importantly if you ask me, LLMs don't offer something Stack Overflow offered: transparency and traceability. Any Stack Overflow post was linked to a user, a real person with a reputation score and a history. One click on their username would take you to their profile, where you could see all their posts and comments. By contrast, you have no idea where an LLM's answer comes from (when it comes from a trustworthy source at all), and unless you have enough domain knowledge to be critical, or unless you can successfully make the LLM back up its claims (which is not always possible), there's no reliable quick way to estimate an LLM's answer legitimacy.

My point can be summed up as follows: **a human-curated list of answers will always be of superior quality to a list of LLM-generated answers**. If Stack Overflow disappears, a gold mine of millions of quality questions and answers, curated by millions of humans over the years, is disappearing. I think it would be a great loss to all developers everywhere, and the next trendy LLM coming out won't make up for it by any means.

Last but not least: Stack Overflow is *free to use*. LLMs are already quite costly (~$20 monthly for most simple use cases, these days), and are nowhere near being sold at their true operating cost. When big companies will decide they've hooked enough users and it's now time to start making money out of them, prices will inevitably go up. As a developer, do you really think you will be better off with a monthly $50, $100 LLM, compared to free good ol' Stack Overflow..?

## Why it is bad for AI itself

Well... we sort of already covered it.

LLMs were trained by crawling the whole internet, and as they got more performant, they very probably applied different weights to different sources. I would bet with high confidence that in all popular LLMs, Stack Overflow had a very heavy weight in the training data set. So, in a way, what you get is a natural language interface to Stack Overflow knowledge database + other sources. Great!

But now that Stack Overflow is dying because people use LLMs instead... what will LLMs of the future be trained on? 

Even though the example of Stack Overflow really embodies the issue, it is one whose scope goes way beyond it, and a very big challenge for the so-called "AI" industry. Have you seen what happens when you train, say, an image "AI" like MidJourney on its own productions? The produced images get increasingly worse, and it gets worse *fast*. Video, images, text, all these generative "AIs" rely on the same deep learning neural network technology, and the same causes will produce the same effects: there's no reason to think that as the internet gets filled with AI production, LLMs won't get worse and worse.

And just like I explained in my previous article, this limitation of generative AI *is not a bug, it's a feature*: functionally, generative AIs act as interpolation algorithms. If you take a picture, remove 10% of its pixels, and ask a neural network to fill in the blanks, it will be quite good. But do it again and again and again, and the picture will deteriorate until what you get is basically just noise. When you think about it, it cannot be any other way: approximation comes with loss.

LLMs are good and useful *because they have been trained on human-produced content*.

## What now?

So, knowing all this, what should we do? 

It's actually pretty simple:
1- Hone your skills. Use LLMs as a productivity enhancer, never as a knowledge crutch. See it as another tool in your belt, next to Google and coding aids offered by your IDE.
2- When using LLMs, if there's any kind of serious stakes, *always check the answer*. You'll be surprised how often the LLM will basically reply "oops!" when you simply ask it to source or back up its claims.

And even more importantly, rejoice! These tools make it increasingly easy to automate the tedious, least interesting parts of our jobs; and as more and more people demonstrate their urge to unplug their brain as soon as possible, you will find it increasingly easy to stay relevant, by the sheer fact of using your mind and applying judgement. It's a great time to be alive, and to stay human.
