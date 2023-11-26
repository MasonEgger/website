---
title: How I Write Conference Talk Proposals
description: My process for writing conference talk proposals.
date: 2022-01-30
categories:
    - Career
tags: 
    - Conferences
    - Speaking
    - CFPs
authors:
    - masonegger
---

# How I Write Conference Talk Proposals

As a Developer Advocate, speaking at conferences is an integral part of my career. I submit many papers to conferences all around the world. Over the years, I've developed a process for thinking about, writing, and submitting talks for conferences. In this post, I'll share with you my process for writing CFPs.

<!-- more -->

So you want to speak at a conference? Congrats! That is a fantastic goal! The decision to speak at conferences was one of the best decisions I have made in my career. I've learned so much, made countless friends, and had some of the best times of my life at various tech conferences. Whether it's your first time speaking or your thousandth, I hope you get something useful out of this post.

In this post, I'll cover how I approach writing CFPs. Having not only spoken at many events and participated on program committees for various conferences, I'll share with you the practices that I have either used or seen in successful talk proposals. 

## First Things First, Determine Your Audience 
A common mistake I see people make when they first decide to speak is to jump straight into brainstorming a topic that they want to talk about. This isn't a bad way to approach this, but people often struggle to think of a topic for one big reason: they can't visualize their audience. Are you giving your talk to a room full of C-Suite individuals? Students? DevOps Engineers? Determining your audience and their skill level will guide you to topics that may be of interest to them.

For Example:
I enjoy talking to the Python community and DevOps/SRE communities. Which almost immediately disqualifies talks about JavaScript frameworks(1) from my list of possible topics. This may seem simple. You may be asking yourself, "Why even write this?" But you'd be surprised how many people I've helped with CFPs who I unstuck after asking "Well, who do you want to present to? Who is your audience?"
{ .annotate }

1. But not entirely, maybe you want to introduce, say, the Python community to this amazing JavaScript Framework. Go for it! Just be sure to show your audience how they can utilize it. 

Once I have determined my target audience(s), I then think about topics.

## How To Pick Topics 
So now that I have my audiences in mind, I ask myself the following questions:

* What is exciting in that community right now?
* What topics are people talking about in that community right now?
* What topics _aren't_ being talked about right now that I think should be discussed?
* What topics do I want to talk about?
* What issue am I trying to solve/address?

If I have multiple audiences in mind, I will briefly explore the overlap between them. Depending on the sprawl of your audiences, this may be easy, or it may be virtually impossible. Don't feel bad if you can't find a technical topic covering both.

For Example: Python and DevOps have a good amount of overlap. I could explore topics such as using and/or extending Ansible, a Python-based DevOps tool. I could explore topics around simplifying the deployment of Python applications. The overlap here isn’t to hard to find. These talks are likely to be good candidates for both Python and DevOps conferences. But I don’t have to do this. Maybe I want to write a talk that’s solely about Python fundamentals. Great! I just would’t submit it to the DevOps conferences.

On the flip side, finding overlap can be nearly impossible. Say I’m interested in CSS and Kubernetes(1). Trying to find a talk that is applicable and interesting to both communities isn’t impossible, but you may spend more time trying to find it than you want.
{ .annotate }

1. An odd pair, but not completely unheard of.

While it is important to focus on topics the community might find useful, it is just as important to focus on topics that you actually want to speak about. Excitement and engagement is contagious, and if you are excited about a topic then your audience will be too. There’s few things worse than listening to someone give a talk about something they aren’t interested in.

Once I have determined the topic that I want to talk about, then I start to think about what level I want to write my talks.

### Talk Levels {#talk_levels}
I typically categorize talks based on the _audience level_, 
_difficulty level_, and the _tool level_.

In most CFP systems, you'll see options for the following audience levels:

* Beginner
* Intermediate
* Advanced
* All

_Audience level_ is the level of expertise you expect the average audience member to have. Audience level can be more of a "minimum requirements" level than a cap. You may want to institute basic prerequisites for your talk so people know what to expect before going in. For example, if I'm giving a talk on little-known SSH features, I would expect the audience to have a basic understanding of *Nix like systems and maybe even that they have used SSH in the past. Having a set idea of your desired audience will help you know where to start your talk. If my audience were beginners, I might start by introducing SSH. If I know they're more advanced, maybe I can skip past that part or cover it quickly. This doesn't mean that intermediate and advanced developers won't benefit from a beginner talk on an unfamiliar topic, of course. You'd be surprised how often more experienced developers attend beginner-focused talks to stay sharp.

_Difficulty level_ is the knowledge level at which you target the talk on this specific topic. This is different from audience level because you have direct control over this. When writing my talks, I always keep difficulty level in mind to ensure that I don't sway too far off course. This can help me keep from going too in-depth on a beginner talk to keeping me from spending too much time on basic concepts in an advanced talk. Some topics are complex by their very nature. Don't worry, you can give different-level talks on the same core topic. 

Example: The Python GIL(1),(2)
{ .annotate }

1. There are three things in life that are constant: Death, Change, and there will be a talk on the GIL at PyCon this year.
2. For those of you that don't know, the GIL is the Global Interpreter Lock, and it is the thing responsible for Python not being able to run on more than one CPU core, blocking true parallelism. It's also the thing that stops you from having to track down wacky-ass race conditions and other _super fun_ bugs that disappear and reappear due to the nature of concurrency, so maybe don't look a gift horse in the mouth, ok?

* Beginner level talk - "What is the GIL and why you should care"
* Intermediate level talk - "How I Got Around The GIL by doing X"
* Advanced level talk - "A Deep Dive Into Garbage Collection and the GIL"
* All level talk - "How Python Core Developers are approaching removing GIL"

As you can see, you can fit any topic to any level. Sometimes I have varying slides in my deck that I hide/unhide depending on the audience level.

Also, note how there is an _All Level_ category. While some conferences will use these interchangeably, that doesn't mean that they are. Advanced developers sitting in a beginner talk about the basics of Python Strings may not benefit from that talk. However, a talk about how to build a community around your Open Source project is likely to be enjoyed by everyone of all levels. 

### _"Aren't Audience Level and Difficulty Level extremely similar?"_
Yes. They ask a lot of the same questions, they just have a different focus. You can often use one to help craft the other. Knowing the difficulty level you want to speak at somewhat mandates the audience level and vice-versa. **Even in my process, I don't explicitly write down the difficulty level of my talks, just the audience level.** I have, however, thought a lot about both. So while they are incredibly similar, they are distinct enough to think of them separately. 

Finally, let's talk about _tool level_. This is very subjective as many people will disagree with what is considered a beginner tool or not. However, there are many tools that obviously fit into a category. No one on Earth has ever said that Kubernetes is a beginner-friendly tool.(1) So, while your opinions on this may vary, it is good to understand your topic's _perceived_ skill level. I find it easy to just have the following levels:
{ .annotate }

1. And if you have, I call bullshit.


* Beginner
* Intermediate
* Advanced

This primarily helps me understand how much work and care I need to take when writing the talk. Say I want to give a Kubernetes talk at the beginner level. Kubernetes isn't typically considered a beginner tool, so bringing it to a level that a beginner can understand may prove challenging. As you saw above in my audience level section, you can talk about anything at any level. Keeping tool level in mind also stops me from writing Advanced Advanced proposals. 

### Your Topic Doesn't Have to Be Complex
A mistake I made very early in my speaking career was trying to write _obscenely_ complex talks on edge case topics. The first proposal I ever wrote for a Python conference was about building python packages as `RPMs` so you could utilize the CentOS package manager to handle both system and Python packages. This talk never got selected, and rightfully so.(1) The proposal was overly complex and an extreme fringe niche. That isn't to say that complex or unique ideas won't get accepted, but they should represent an interesting problem or a use case that a subset of the community will experience. My talk was neither. 
{ .annotate }

1. It's my talk, so I can shit on it. While it was an interesting problem, it would have appealed to, like, two people.

From an organizer's point of view, complex talks can be difficult to schedule. We have to think of our attendees as a whole. Very few conferences consist of solely advanced engineers. A lot of beginners attend conferences as well. Therefore, we have to strike an even balance of talks. This tends to have us scheduling mostly beginner/intro talks(1), followed by intermediate talks, and then a handful of advanced talks. So, complex and advanced talks will have fewer slots allocated to them, reducing the chance of your niche talk being selected.
{ .annotate }

1. Note here that intro talk doesn't necessarily mean beginner. It means that it is an introduction to a topic. The topic itself could be advanced. What it isn't is a rare one-off use case on a rarely used feature in an advanced library.

### Your Topic Doesn't Have to Be Technical
Another common misconception I see is that talks have to be technical. This couldn't be further from the truth(1). Talks on community, soft skills, non-technical skills such as leadership, program management, etc., are all great options.
{ .annotate }

1. In fact, some of my favorite conference talks have had nothing to do with programming at all.

Now that I've thought about who I’m speaking to, what I want to speak about, and the tool level I want to hit  I turn to my personal process for writing my CFP.

## How I Write CFPs
Over the years of applying to _many_ different conferences that all seem to use a different CFP program and process, I've developed a template to write every single one of my talks. This template can be rather non-linear. I don't just fill it out top to bottom. I bounce around using previous sections to help write the next. You can see my template below or find it on my GitHub [here](https://github.com/MasonEgger/conference-talk-proposal-template). Below this, I'll explain how I use every section of my template.

### My CFP Template
```markdown
## Type
Talk, Workshop, Lightning Talk

## Title
Some Fun, Clever Title

## Category
Single Overarching Theme
Ex: DevOps, Python, Community

## Elevator Pitch (300 Character Limit)
300 characters or less elevator pitch. 
Include Audience Takeaways

## Audience
* Who is this for?
* Can be many different audiences

## Audience Level
Expertise required for this talk
Include prerequisites

## Audience Takeaways
What will the audience take away 
and/or learn from this talk? 

Should be 3 things

## Outline
* Timed outline (1 min)
* For the Presentation (5 min)
* More detail is good here (20 min)

## Description
Slightly longer description. 
Expands upon elevator pitch. 
Be sure to include Audience Takeaways

## Internal Notes (For Your Eyes Only)
All the nitty-gritty of the talk. 
Your scratch paper

## Additional Notes
Anything else. 
Presentation materials needed
Why you're qualified to speak on this
Etc.
```

### _Type_
```
Talk, Workshop, Lightning Talk
```
What type of presentation is this? What format will work for this presentation? When you have a lot of papers, it's good to have this right at the top so you don't waste time trying to figure out what you meant when you wrote this six months ago. There can be more than one type. It's rare, but I do have a few talks that could both be Talks and Lightning Talks, depending on what I omit.

Options include:

* Talk (Usually 15 - 45 minutes)
* Workshop (Usually 60 - 180 minutes)
* Lightning Talk (Usually 5 - 10 minutes)

### _Title_
```
Some Fun, Clever Title
```
To me, the title of a talk is everything. It needs to be catchy while also setting expectations for the talk. I am a big fan of the "Catchy first title: explanation subtitle" format. You'll see most of my talks have this title format.

For example:

* Docs Like Code: Continuous integration for documentation
* SSH Can Do That?: All the things you didn't know about SSH
* A Year Without Pants: Successful Strategies for Remote Work

However, I don't constrain myself to this format. It is my favorite, but sometimes it just doesn't work. But titles should be entertaining and engaging. Attendees have to choose from a wide array of talks that they are given very little information on. Having a good title will attract them to your talk. And remember, the conference organizers and talk selection committee are also your audience. Another one of my talk titles is "The Enters and Exits of Context Managers." From the outside looking in, this talk is a bit confusing. It does explain that you're going to be learning about Context Managers, but with a little joke. The joke here is that `__enter__` and `__exit__` are ways to create a Context Manager in Python. This is a play on the phrase "The ins and outs" by changing it up with synonyms that fit _perfectly_.(1)

1. As someone who enjoys clever wordplay, I'm still proud of myself for this talk title. I consider it one of my crown achievements.

Another tip I have for titles is to make them Iambic(1). If you don't know what this is, I highly recommend you [look it up](https://nosweatshakespeare.com/sonnets/iambic-pentameter). The tl;dr is that, in English, it is pleasing to hear words that follow a short syllable followed by a long syllable. It's rhythmic and oh so complex. 
{ .annotate }

1. AP English for the win. 

If you are writing a paper in a language other than English, I would recommend looking into what speech patterns are pleasing in that language.

### _Category_
```
Single Overarching Theme
Ex: DevOps, Python, Community
```
Your category is a single overarching theme of the talk. I am adamant about keeping this as a single category. If I find myself with many different categories and no prevailing one, then the talk is too complex, and I need to simplify it. Try to hold yourself to this; it will make your talk clearer.

Examples: 

* DevOps
* Python
* Community

### _Elevator Pitch (300 Character Limit)_
```
300 characters or less elevator pitch. 
Include Audience Takeaways
```
[Papercall](https://www.papercall.io/) is a popular platform that conferences use to gather papers. The first part of their format includes the "Elevator Pitch" and they have a limit of 300 characters or less. I used to dislike this format, but now I think it's become my strongest asset. This is a _great_ way to write an abstract. There's the old quote, "If I had more time, I would have written a shorter letter." Concisely portraying your thoughts on a specific topic is not a trivial effort. When I write an elevator pitch, I tend to have a two-way process. I'll either write a longer description and prune it down to fit the elevator pitch, or write the elevator pitch and then expand upon it to fill the _Description_. I've found that the former tends to work better for me, as it allows me to get my thoughts out first. Whenever I write the elevator pitch first, I'll often find myself coming back to modify it as the _Description_ forms.

Also, in this section, I always include my _Audience Takeaways_. This makes it even more difficult because the takeaway can easily take 100 - 150 characters. So I have to be even more concise. I believe, that it is paramount that you include the _Audience Takeaways_. A good abstract should explain what you will talk about and what people will gain by coming to your talk. Conference attendees usually see this in the program, and they know immediately by reading it if the talk 
is right for them.

### _Audience_
```
* Who is this for?
* Can be many different audiences
```
As I said earlier in this post, you **must** know who your audience is. In this short section, just write it out. Is it for Python Developers? DevOps Engineers? Marketers? Make a bulleted list and write it out. Your audience can be many different types of people. You don't need to limit it to one, but don't feel bad if it is just one.

### _Audence Level_
```
Expertise required for this talk
Include prerequisites
```
As mentioned above, having a set level for the difficulty of the talk will  help you scope the content. I covered how to think about audience level in-depth above in the [section](#talk_levels). You should also explicitly write down any prerequisite knowledge you expect the audience to have coming into your talk. Sometimes there is a place to share this in the CFP submission, but if there isn't, it is still useful for scoping the talk. 

### _Audiece Takeaways_
```
What will the audience take away 
and/or learn from this talk? 

Should be 3 things
```
Audience Takeaways are one of the most _vital_ parts of a CFP, and you'll rarely see a CFP ask for this(1). It isn't enough to tell people what your talk about, but _what they are getting out of your talk_. Single-track conferences are rare. There are usually at least two or more talks happening simultaneously. Let the viewer know what to expect from your talk so they can choose the correct talk for them.
{ .annotate }

1. And kudos to the ones that do.

In this section, I write three bullet points of takeaways I want attendees to get out of my talk. And three is a hard stop for me. If you've never heard of [The Rule of Three](https://en.wikipedia.org/wiki/Rule_of_three_(writing)) you should read up on it. The tl;dr is that trios of things are more satisfying and effective than other numbers. There's some deep psychology around it that I can't explain, but it works. 

When it comes to writing them into my Elevator Pitch or Description, they can take many forms. The main thing to focus on here is the Rule of Three. Looking back at my successful talk proposals, 95% of them have utilized it in the Elevator Pitch in some way. 

From a conference organizer's viewpoint, I _love_ seeing takeaways. It tells me that the talk is well thought out. Also, it helps me see if I think the talk will resonate with the audience of my conference. 

### _Outline_
```
* Timed outline (1 min)
* For the Presentation (5 min)
* More detail is good here (20 min)
```
Outlines are an extremely helpful tool. I tend to outline my talk with the titles of my slides. I may have one or two slides that aren't represented here, but most of them are. I also put time estimations next to each section. These are immensely useful, helping me scope the talk and determine what I do and don't have time to talk about. However, these are estimates, and I treat them as such. Don't feel bound to these times. Adjust as you see fit. 

From a conference organizer's viewpoint, outlines help me _so much_. I can see exactly what you're talking about, what you're trying to get across, and whether or not I think this will be a good talk for my conference. The subset of talks that include a detailed outline and the subset of talks that get selected for the conference overlap almost perfectly. 

### _Description_
```
Slightly longer description. 
Expands upon elevator pitch. 
Be sure to include Audience Takeaways
```
This is where you can go into great depth about your talk without a character  limit. I tend to write this first to get a full idea of my talk and then condense it to fit into the Elevator Pitch. You may end up submitting this section in a CFP or you may not. It's still important to fill this out to help define what you want to accomplish in your talk. 

### _Internal Notes (For Your Eyes Only)_
```
All the nitty-gritty of the talk. 
Your scratch paper
```
These are my notes. I put links to resources to help me write the talk, thoughts I had while writing the paper. Anything and everything can go here. These shouldn't be shared with conference organizers.

### _Additional Notes_
```
Anything else. 
Presentation materials needed
Why you're qualified to speak on this
Etc.
```
A lot of CFPs will have a section for "Anything else." This is a great section to put extra requirements you'll need for your talk. These could be anything from an extra monitor to a laser pointer. If you need special accommodations, such as a lower podium or equipment, be sure to fill this in. The conference will likely already have the items you need, but it is always good to be explicit in your requirements.

Many people will often put here why they are qualified to speak on this topic. I'm personally not a fan of this, but I understand why people do it. If you want to put this in your CFPs, go ahead. A tip I would say is to never say that you are "the most qualified person to speak on this." I never put this. There is always someone more qualified to speak on this topic than me.(1) If I put my qualifications here, I explain why I'm qualified to speak on this overall. Also, **don't put identifying information in here**. Conference organizers are trying hard to keep the selection process fair and anonymous.
{ .annotate }

1. That being said, if you are the most qualified person to speak on this, you can put it. I say this because I have a lot of friends who often speak on their own open-source projects, and they are, in fact, the most qualified person to speak on this topic. However, for the sake of anonymity, maybe still avoid this. If you say, "I wrote this library, hence I'm the most qualified to speak," I probably will be able to figure out who you are. And we're trying to maintain fairness in our CFP selection process. 

## My Yearly Process
Because my job expects a certain level of speaking engagements from me every year, I have a process around writing talks. Every year in late Q4, when most of the company is wrapping up and preparing to go on winter break, I sit down and write all of my conference talks for the next year. The past few years, I have written anywhere between 5-8 talks for the upcoming year. This doesn't mean that if a great idea strikes me, I won't write a paper about it. I do this so when a conference opens up that I want to speak at, I don't have to stop what I'm doing to write a proposal. The current audiences that I'm looking to speak to are the Python and DevOps communities. So I try to write talks that I think those communities will find interesting. That doesn't mean that the talks focus on a Python topic. I am somewhat known in speaking circles for talking about documentation and technical writing. These talks are relevant to both communities, so it's a win-win for me. In the past few years, I have started writing more specific talks focused on individual technologies. I usually write 2-3 of these specific talks a year, and then the rest of my talks will be broad enough that I can give them at any conference. These broader talks focus on documentation, "soft" skills, and community building. 

### How Do You Feel About Giving a Talk More Than Once?
There is a big debate around if/when you should give a talk more than once. I take a rather selfish stance here and say, if I spend so much time and effort writing it, you bet I'm going to give it more than once. However, I do have some rules around it. 

First, I won't give a talk more than twice virtually. The first year I started  speaking, which was 2019, I gave my [Building Docs Like Code: Continuous Integration for Documentation](../../speaking/building-docs-like-code-continuous-integration-for-documentation) talk six times at various regional Python conferences. We must remind ourselves that very few people go and search out random conference talks on YouTube.(1) Giving the same talk at different regional conferences means getting it in front of more people who more than likely would not have seen it otherwise. With the accessibility of virtual conferences, more people can attend, and I find this as a reason to not over-saturate the virtual conference market with these talks. 
{ .annotate }

1. Don't believe me? Go look at the views.

Second, when I'm tired of a talk, I stop giving it. My Docs Like Code talk was fantastic. I loved writing it; I loved presenting it. After six conferences and  a handful of meetups, I'm tired of giving it. I may write version 2.0 in the future, but that talk is purposefully retired for now.

Third, if I give a talk and determine I don't like it, I might not give it again. I usually try to fix a talk if I feel it doesn't work, but not every talk is a winner. The talk may have felt good on paper, but I didn't like it in practice. The only way to "get good" at something is to practice. Not everything is going to be great. Don't cling to something if you aren't feeling it. There will be more opportunities. 

## "Should I submit a talk to this conference?"
Yes! I encourage everyone to submit talks to conferences. If you get selected, great! If you don't, feel free to reach out to the organizers for feedback on  your proposal. You'll be surprised how often they'll take time to do this. Conference organizers all want you to succeed. They'll either come back with some tips on your talk, or they could tell you that your talk was great, but it just
didn't win out against other talks. 

The only way to get better at anything is to practice, fail, and try again until you succeed. If you don't get selected, keep at it! It took me three years of submitting papers to conferences to finally start getting accepted. You'll get there eventually, and I look forward to watching your talk
when you do. 
