---
title: "Claude Code as My Daily Driver"
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
And as any curious person trying to avoid work on a Tuesday(1), I downloaded Claude Code(2) and tried it out.
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


## Your Mileage May Vary

Before going any further, I will say that this is what has been successful **for me**.
If you go on Twitter(1) you'll see 465,279,346,727,844,684,918,549,865 posts(2) about AI, how it just destroyed some industry, and how if you use it _just this special way_ you'll become Supreme Overlord of Ganymede(3).
It's a **lot** to keep up with and everyone has their own process for getting AI to accomplish their goals.
And that's great!
I'm writing this blog to share what I've learned through my journey using CC for half a year, following certain trends, ignoring others, and most importantly of all, because my manager asked me to(4).
If your favorite tip or trick isn't mentioned in here, it doesn't mean it isn't good.
Given the firehose of AI information out there, there is a 99% chance I just haven't seen it yet.
{ .annotate }

1. Sorry, never going to call it X.
2. Plus or minus 74,569,411.
3. Jupiter's largest moon. Also the largest moon in the solar system for our Jeopardy fans out there.
4. And of course, to add to the clutter. Here's to being the 465,279,346,727,844,684,918,549,866th post!

So I hope you learn something from this! If not, I promise to make it entertaining at least.

## Core Principles

Over the last several months I've consumed countless blogs, tweets, documentation pages, videos, stone tablets, etc. on how to properly optimize my workflows.
This goes beyond just features of CC, and focuses more on "How should one use AI?"
While I've tried many, many things, I keep coming back to a set of core principles that yield the best results for me.
    
### AI augments, it doesn't replace

AI is not an intern.
It is not an
And it sure as shit isn't an all knowing deity.

What AI is, in fact, is my colleague. 
My thinking partner.
And I've never worked with **anyone** who was perfect, got things right

AI doesn't replace my colleagues.
It doesn't replace me.
It sure as shit doesn't replace my profession. 
It gives me another tool I can use to be effective at my craft.

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
## "Ya, but what have you actually built with this?"
    * Contributions to multiple OSS repos
    * Demos for customers
    * Workshop content
    * Course ports
    * CLI tools
    * Knowledge base (Obsidian)
    * An entire open source community
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
## What I Think This Means for the Future of Software Engineering
    * Hidden Figures - Math on hand to using the IBM
    * Code is now cheap
    * Systems Design and Communication is the currency

!!! abstract "Part 3 of 3 of my `Brain Dump Ramblings on AI` blog series"

    * Part 1 - **[We're Witnessing the Evolution of Software Engineering](014-software-engineering-evolution.md)** discusses the historical context and ongoing evolution of software engineering up to the advent of AI.
    * Part 2 - **[Code is Cheap, Don't Devalue Yourself](015-code-is-cheap.md)** discusses AI and it's impact on the software engineering discipline.


*[CC]: Claude Code

