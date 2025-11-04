---
title: "AI is Coming, Run for Your Lives!"
date: 20:00 11/03/2025

hero_classes: text-dark title-h1h2 overlay-dark hero-large
hero_image: banner.png
show_sidebar: true

taxonomy:
    category: 
        - blog
    tag: 
        - AI
        - opinion
        - job market
published: true
---

Recently, Amazon announced a big downsizing plan. Predictably, they claimed what many people feared: they're supposedly replacing many human positions with AI. So... is this it, are we done for? Can we close our IDEs and go raise goats in the countryside?

Ask yourself this question: if you wanted to know for sure if "Dr Lewis Miracle Oil" actually helps prevent hair fall, would you listen to the shady traveling salesman trying to sell it to you? Would you trust your neighbour, who just bought ten packs of it, and is trying to resell you one? It would sound like a suspicious idea. And yet, when we trust what big tech has to say about AI, it is roughly what we are doing.

===

## ROAI: Return on AI

Big tech companies invested —or rather, made their investors invest— a staggering amount of money in AI R&D. Meta announced spending 500 *billion* dollars. And it's just one of many examples.

When you are raising this much money, you need to make bold promises. And, even though selling snake oil is quite definitely a skill for all entrepreneurs reaching this kind of success, at some point rhetoric can only get you so far; you have to make profits. And if there is none to be found, you can always make some up! That is how you end up inserting AI everywhere, without —and sometimes against— users' will:
- An AI agent in your OS, released via a forced update (Microsoft)
- An AI powered automatic dubbing and subtitling of videos, updating your terms and conditions at the same time to *ban the same content when human produced* (Google)
- ...

And now your usage of technology, while being mostly the same, can be listed in the "AI returns on investment" column... smart move!

## Do not say "downsizing", say "replaced by AI"

Amazon, just like the rest of the tech industry, continuously scaled up in the 2010s. But, even more so than the rest of the industry, COVID-19 and lockdowns were a source of huge opportunities for them, and Amazon's headcount skyrocketed:

![Progression of Amazon's headcount from 2010 to 2025](./amazon-growth-rate.png)

Now, just imagine this: you're head of communication at Amazon. Upper management tells you the company is gonna have to lay 14000 people off. You summon all your cognitive abilities, you think very hard about it, and then you make a media statement, saying either:

1. "We hired tons of people that we didn't need long term, because they helped us make more profit in a context of high demand. Demand decreased since then, these employees are now an unproductive cost for the company, therefore we're firing them. This is a business, not a charity!"
2. "AI is the biggest ~~bubble~~ transformation the world has known since the invention of the Internet! Amazon is a pioneer, and before all our competitors, we proudly announce that starting as early as next month, 14000 jobs will be automated and replaced by AI!"

I believe you wouldn't hesitate for too long. What a beautiful way of killing two birds with one stone: you're turning an ambiguous signal sent to investors in an undoubtedly positive one; and at the same time, you imply that *finally*, the billions invested in AI are paying dividends!

In 2025, don't say "downsizing plan", say "AI replacement".

## Developer, will you be replaced?

Will developers be replaced by AI? I don't know, I might answer this question when I will see an artificial intelligence.

Will developers be replaced by LLMs? Ah, here's the concrete question, thank you!

### On the nature of LLMs

"AI" is a marketing term covering a technology that, while being undoubtedly very powerful, definitely sounds less like a worldwide revolution: Large Language Models, models made to complete any text with what is statistically most probable, relying on a colossal amount of texts found on the internet and fed into a neural network. It is practical, and it can make you more or less productive depending on how you use it, just like with any tool. As powerful as it can be to accomplish certain tasks, it should not be mistaken for what it is not. If you speak French —besides reading this article in its French version— I also suggest you watch this short and [very nice video of "Science Étonnante"](https://www.youtube.com/watch?v=7ell8KEbhJo), which successfully explains how chat bots like ChatGPT work, by analysing their core: the underlying LLM —GPT, in that case. Using understandable examples, he illustrates the fundamental limit of these models. Let me give you here the example that stuck with me:
- Type into GPT "Christopher Columbus discovered America in": the model completes with "1492". Great!
- Type into GPT "Quentin Bonnet discovered America in": the model completes... "1492". Uh oh...

It's actually very logical, because it is only *statistical*: the phrase "discovered America in" is so tightly correlated with "1492" in the texts the model was trained on that it was the most likely follow up, whatever the preceding words were. Just like that, we demonstrated how easily we could make an LLM say something factually false.

If you are, like me, using LLMs for your day-to-day work —as a developer or not, actually— keep that example in mind. ChatGPT, Claude, and any other chatbot will always be capable of confidently telling you nonsense. And it is not a bug, it is a feature, it is part of the very nature of the LLM. It also explains why we will never be able to censor LLMs without destroying their functionality... but that is another discussion.

### Use case

I am not opposed to new technology on principle: if a new tool can make me more productive or better in what I do, I will try it, of course. After one year of experimenting with LLMs to aid development—I tested online chatbots like ChatGPT and Claude, but also Cursor IDE and more recently Claude Code—I identified some usages that seem efficient to me, and many others that are way less so. I will explore this further in a future article via case studies. For now, I am simply going to give you my conclusions. In short: **an LLM is a tool, it is not your colleague**—it is also a good way to summarise why it cannot, by its very nature, replace you. And this tool often makes me more efficient, in ways that I could group into three main categories:

1. To do preliminary research on a new topic (Google++)
2. To think more deeply about a new design you're not quite sure about yet and you want to challenge (poor man's brainstorming session)
3. To code something, but with clear instructions and a measurable result

In any case, supervision, verification, control... are inherently part of the process—unless, of course, you think you discovered America in 1492. And, when you take into account the verification and rectification steps—the LLM *very* rarely produces something satisfying after just one prompt; there will be some back and forth—you realise that the productivity gains can be real, but are way more marginal than you might have hoped for. That being said, I use LLMs, and I will keep using them... until the day when they will finally be sold at their actual hosting and maintenance price... but it is a question for another day!

### In conclusion

You will not be replaced by an LLM, not any more than you were replaced by Stack Overflow ten years ago; that being said, you might end up using an LLM as much as you used to use Stack Overflow before—actually, it has already started. But you remain necessary, as the knowledgeable person guaranteeing that what gets delivered to prod is relevant and will not make everything collapse. LLMs cannot commit professional negligence, an LLM cannot get fired; in other words, there will always be the need for a responsible human to make decisions. Whether the code has been 100% hand-typed, auto-completed by an IDE, or largely written by an LLM does not change anything to that responsibility principle.

If some day an "AI" pushes the "push to prod" button without any kind of supervision, then for sure... but, wait a minute, isn't that Terminator's plot?
