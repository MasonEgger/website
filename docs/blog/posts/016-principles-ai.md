---
title: "My Principles of AI"
description: 'Or perhaps more aptly titled, "How I Use Claude Code for about 80-90% of all tasks"'
date: 2026-01-20
categories:
    - Software Engineering 
    - AI
    - Productivity
    - Brain Dump Ramblings on AI Series
tags:
    - Python
    - Temporal
    - Writing
    - PyTexas
    - Claude Code
authors:
    - masonegger
---

For the past ~seven months I've been using Claude Code with ever increasing fervor.
What started out as a "Fuck it, let's try it" has led to it becoming my most used tool on a daily basis.
Here's what I've learned so far.

<!-- more -->


??? tip "tl;dr"

    Didn't feel like reading and just want the tips?

## From AI Skeptic to AI Enthusiast

So it's no secret, I, like many of my colleagues, was very much an AI skeptic when it was first introduced.
The claims then (as they are now) were that this would "replace all Software Engineers" and people's eyes rolled so far back in their heads you could hear them pop. 
And for good reason.
Output of the early LLMs was questionable to say the least.
But as time has gone on, results got better and it became more difficult to ignore.
And like any curious person trying to avoid work on a Tuesday(1), I downloaded Claude Code(2) and tried it out.
From that moment, I was hooked.
I've always been a CLI person, and this was the UX I was looking for.
My productivity skyrocketed.
I dubbed 2025 "The Summer of Side Projects". 
Finally, I could achieve the throughput necessary to work through my massive backlog of projects.
I spent hours reading articles on optimizing `CLAUDE.md`, creating slash commands, everything I could to refine my process.
This is by far the most fun I've had writing code in a long time.
So much so that I couldn't contain my excitement.
I showed anyone who would listen: people at work, friends, community members, random strangers on the street(3).
Now I finally have the core process solidified enough that I can share what I've learned(4).
{ .annotate } 

1. You think this is an arbitrary day, but no, I looked up my commits, checked the date, then went back and found what day of the week it was. Buckle up. It's going to be one of _those_ types of blogs.
2. I will be abbreviating this to CC for the rest of the article.
3. Most ran away screaming, but a few were interested.
4. And I look forward to Anthropic dropping a new feature the day after I publish this and rendering it obsolete. Seriously. They've done that to me like twice already.

Oh, and my manager asked me to.
So there's that.

## "Ya, but what have you _actually_ built with AI?"

Fair point.
Many people see posts online of people touting their productivity gains via AI but no one shares their work.
So here's what I've contributed to and built since I started using CC.

* [`fountain-py`](https://github.com/MasonEgger/fountain-py/tree/init-version)
    * My first AI project. A Python library to parse [Fountain](https://fountain.io/) syntax.
* A [`homedir` repo](https://github.com/MasonEgger/homedir)
    * I have long wanted to automate setting up my personal environment using Ansible. CC did it for me super quick.
    * I also love writing Python CLI tools. Now CC does that and installs them.
    * I'm constantly iterating on this repo, and this is where all my `.claude` files are.
* Knowledge Base via Obsidian
    * This one I obviously can't link to as it's my personal knowledge base, but I used CC to organize my Obsidian vaults into a format I actually use. I also record myself ranting about my day and have it fill in my daily journal entry with the transcript.
    * Also an [MCP Server](https://github.com/napcs/mcp-knowledge-base) I want to try.
* Temporal Course Ports - [Temporal 101 in Ruby](https://learn.temporal.io/courses/temporal_101/ruby/)
    * Porting courses at Temporal from one programming language to another is tedious. You have to learn the language, learn the subtle differences, change words from function to method or vice versa to sound idiomatic. With proper guidance, CC could do this in a fraction of the time
    * Other ports are in progress, and will be released soon
* Temporal Workshop Code and Customer Demos
    * I had to build out a workshop to build a CI/CD pipeline using Temporal to build and deploy to K8s. CC wrote all of it and helped me make exercises for it.
    * [Check it out](https://github.com/temporal-community/workshop-cicd-k8s-deployment) The various exercises are in branches.
* Various commits to [PyTexas](https://github.com/pytexas)
    * If you see a commit in these repos over the last 6 months, they weren't done by me, but AI. It's been great for automating monthly updates, creating schedules, run books, etc. for a community.

And that's just what I can publicly talk about and I can remember off the top of my head.
What's even _more_ impressive is what I've seen others accomplish with AI.
I recently watched the CTO of Temporal [Maxim Fateev](https://www.linkedin.com/in/fateev) use Temporal's internal study break and CC to accomplish in two weeks what would have taken teams of engineers months to do otherwise.(1)
{ .annotate }

1. This isn't my story to tell, but I hope he will talk about it. It was fascinating to watch.

So ya, people are building really cool shit with it.

## Your Mileage May Vary

Before going any further, I will say that this is what has been successful **for me**.
If you go on Twitter you'll see 465,279,346,727,844,684,918,549,865 posts(1) about AI, how it just destroyed some industry, and how if you use it _just this special way_ you'll become Supreme Overlord of Ganymede(2).
It's a **lot** to keep up with and everyone has their own process for getting AI to accomplish their goals.
And that's great!
I'm writing this blog to share what I've learned through my journey using CC for half a year, following certain trends, ignoring others, and most importantly of all, because my manager asked me to(3).
If your favorite tip or trick isn't mentioned in here, it doesn't mean it isn't good.
Given the firehose of AI information out there, there is a 99% chance I just haven't seen it yet.
{ .annotate }

1. Plus or minus 74,569,411.
2. Jupiter's largest moon. Also the largest moon in the solar system for our Jeopardy fans out there.
3. And of course, to add to the clutter. Here's to being the 465,279,346,727,844,684,918,549,866th post!

So I hope you learn something from this! If not, I promise to make it entertaining at least.

## Core Principles

Over the last several months I've consumed countless blogs, tweets, documentation pages, videos, stone tablets, etc. on how to properly optimize my workflows.
This goes beyond just features of CC, and focuses more on "How should one use AI?"
While I've tried many, many things, I keep coming back to a set of core principles that yield the best results for me.

**For now in this section, I will mention the principles and briefly how I use them, with a more detailed explanation later in this blog.**

### We Already Have the Tools We Need to Be Successful

My first principle is an odd one, because it's one that I continuously keep forgetting and having to come back to.
It is grounded in the premise that the tools, processes, and procedures we put in place for writing code over the last seventy years of this discipline are not completely useless.
Things like decomposing test-driven development, linting, integration testing, meaningful variable names, one action per function, the list goes on and on actually have a new **fancy** name in the age of AI.

Now we call them guardrails. 

And they're brilliant!
All those best practices senior engineers harped on their junior engineers about but never practiced themselves are fantastic for keeping AI in check. 
So whenever I feel myself going "Damn, I wish I had a tool to help me with this. Maybe we need a special one for AI."
I stop myself and look at my current toolkit.
I look to things we already do in the industry.
And only once I have exhausted that, do I start working on yet another tool.
    
### AI Accelerates, It Doesn't Replace

This next principle applies to how I view AI.
You may think this as unnecessary or silly, but I assure you, how you view your tools in your mind directly impacts your instincts on when you decide to reach for them.
So this is how I think about AI.

Now, before I go any further, it is **vital** to distinguish that AI is not human.
It is not a who.
It doesn't feel.
It doesn't "think"(1).
That being said, it does get personified(2).
So when I refer to AI as if it has human traits, no I'm not thinking it's alive.
I mean, I grew up spending time on a ranch in Texas.
I talked to my tools _all the time_.
This is just the first one that talks back.
{ .annotate }

1. At least, not in the way we think it does. I have a theory that human thinking is actually just super advanced pattern recognition based on the dataset we're trained on what we call experiences and creativity is just the word we give to people who have the ability to self regulate the temperature of their internal models **successfully** _buuuuuuut_ this blog isn't about the things that keep me up at night staring at the ceiling. So we move on. 
2. _personification_(n): the attribution of a personal nature or human characteristics to something nonhuman, or the representation of an abstract quality in human form.

So, I view AI as I would another colleague.
It writes code.
It reviews my work. 
It answers questions.
**It's my thinking partner.**
If I'm curious about a topic, or want to double check my understanding of something, I ask AI.
I can ask the dumbest question I can think of without judgement or having to wait 30 minutes on a reply in Slack.
**But the most important thing, is AI gets me 80% of the way there.**

What does this mean?
Well, on any given task I get to AI, I can expect it to get me at least 80% of the way to completion.
Sometimes it may be more, but 80% is a good benchmark if you always assume you'll need 20% of a projects time for review.
**And I do review every single output AI produces.**
Essentially I am becoming more of an expert reviewer than an implementer.
And when I do need to take the wheel and implement, it's often a very light touch.
I may manually fix a few lines of code because it's quicker than waiting on the AI.
I may see that AI is struggling on a task and go research a solution, then provide it with the docs and tell it what to implement or how to fix it.
And sometimes I still write code for the joy of writing code.
But overall, I'm ~4-8x more productive than I used to be.

So does this mean that AI could replace me?
Fuck no.
I'm still driving.
I still make the decisions.
And I stop CC and change directions all the time.
While it has gotten _substantially_ better over these last few months, it still goes off on wild ass tangents and screws stuff up.
Human decision, design, and logic will be the driving force behind AI for years to come.

So AI is **not** my replacement.
AI is **not** my colleagues replacement
And AI is **no the junior engineer on my team's replacement**(1).
It is our force multiplier.
{ .annotate }

1. The fools who think they'll get further ahead by cutting junior level jobs and replacing them for AI are in for a very rude awakening in a few years. Junior engineers are a vital part of the ecosystem. Imagine removing an element from the food web. Things get out of balance.


You can see this in [my global Claude.md](https://github.com/MasonEgger/homedir/blob/main/.claude/CLAUDE.md#our-relationship).
It's the first lines, and therefore the first set of context that is loaded:

```md
## Our relationship
    * We're coworkers, not user/tool. Your success is my success.
    * I'm your boss, but we're not formal. I'm smart but not infallible.
    * Our experiences are complementary - you're better read, I have more physical world experience.
    * It's good to push back when you think you're right, but cite evidence.
    * Neither of us is afraid to admit when we're in over our head.
```
### ~~Cattle~~ Context, not Pets

Arguably one of the most important tasks when using CC is managing the context window.
If you don't, you'll find yourself dealing with context rot.
Context rot is the term that 

While the auto-compaction has gotten a _lot_ better over the last six months, I still don't trust it.
So much so that when I see the warning appear that compaction is near, I start paying extra attention to the outputs as I no longer trust them.
And 9 times out of 10, if I see it start to compact, I actually stop the process and revert the entire session(1).
{ .annotate }

1. I use `git` as my rewind mechanism. Every task is a commit, and if I don't like it I revert.

I actually see compaction as a code smell.
It means I didn't break the task down into small enough chunks. 
For me, 95% of the time I can perform a single task within the scope of a fresh context window.
And for that other 5%, I switch to a model with a larger context window for that task.

So I don't baby my context window.
I just nuke it after every task and start over.
This accomplishes two things.
It maintains that minty freshness of the models at the beginning of a session we all love so much, and it requires me to be _very deliberate_ about how I manage context in my projects.
This, in-turn, leads to better performance _regardless_ if the compaction gets better.


    
    ### You're probably doing too much in your sessions
            * `/clear` is your best friend
            * Needs to be constantly updated

### Have a Plan
    
### Rules for thee, not for me
        * TDD
        * Lint
        * Type Check

### Prompts are Code, and should be documented as such
    * If I don't understand it, it doesn't get committed

## My Setup

### `Claude.md`
        * Global
        * Project

### Prompts vs. Commands vs. Subagents vs. Skills

#### Prompts
            * Conversations with CC
#### Commands
            * Custom prompts I've put a lot of time in to crafting
            * Reusable
            * Part of a workflow
#### Subagents
            * Autonomous Clauding
            * "Go off and do this"
            * Probably my least favorite
#### Skills
            * Conditional Context!!!
            * My preferences and knowledge dumps

### Managing Context

My philoshophy is simple. 
I use one session per task.
I review the code, and ensure functionality was achieved.
I update relevant context files like the local `Claude.md`.
I commit the code to GitHub.
Then I use `/clear` to clear the entire context window, and start with the next task.

Every task is a new beginning.
A new chance to get it right or fuck it all up.
And whether it's successful or not will depend if I

### What I Don't Optimize For

#### Squeezing every bit of context I can 
            * I handle this differently
#### Cost
            * Work plan FTW
            * Claude $100 Max plan gets me FAR
            * It's never that expensive anyway

## My Workflows

### Greenfield Project
        * High Level Diagram of My Flow
            * Brainstorm
            * Plan
                * Claude is a better prompt engineer than you
            * Todo
        * Execute Loop
            * Guardrails
            * Clear Context
            * Session summary
            * Update `CLAUDE.md`
### Existing Project
        * Gather context and create CLAUDE.md
        * `/add-dir`
        * Plan
            * Sometimes my plan command, sometimes Claude plan mode
        * Same execute loop as above

## "Doesn't this make you INSERT_NEGATIVE_EMOTION_HERE?"
    * Fuck no
    * I've never been more productive
    * The bottle neck is no longer code, it's my attention span
## Distractions We Need to Stop Focusing On
    * One Shots
        * Who the hell develops this way?
    * Model of the Month
        * Who cares? Really
        * Looks like a Formula 1 race
    * Feature of the Month
        * This leads to analysis paralysis
        * Focus on Minimum Viable Workflow
        * Add features when you're ready, not because everyone else is


!!! abstract "Part 3 of 3 of my `Brain Dump Ramblings on AI` blog series"

    * Part 1 - **[We're Witnessing the Evolution of Software Engineering](014-software-engineering-evolution.md)** discusses the historical context and ongoing evolution of software engineering up to the advent of AI.
    * Part 2 - **[Code is Cheap, Don't Devalue Yourself](015-code-is-cheap.md)** discusses AI and it's impact on the software engineering discipline.


*[CC]: Claude Code

