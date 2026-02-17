---
title: "How I Actually Use the Damn Thing"
description: "Enough waxing poetic about AI, here's my actual Claude Code workflow."
date: 2026-02-06
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
I spent hours reading articles on optimizing `CLAUDE.md`, creating slash commands, everything I could to refine my process(3).
This is by far the most fun I've had writing code in a long time.
So much so that I couldn't contain my excitement.
I showed anyone who would listen: people at work, friends, community members, random strangers on the street(4).
Now I finally have the core process solidified enough that I can share what I've learned(5).
{ .annotate } 

1. You think this is an arbitrary day, but no, I looked up my commits, checked the date, then went back and found what day of the week it was. Buckle up. It's going to be one of _those_ types of blogs.
2. I will be abbreviating this to CC for the rest of the article.
3. One of the most impactful being [Harper Reed's Blog](https://harper.blog/2025/05/08/basic-claude-code/). I initially forked his CC setup and have iterated on it from there.
4. Most ran away screaming, but a few were interested.
5. And I look forward to Anthropic dropping a new feature the day after I publish this and rendering it obsolete. Seriously. They've done that to me like twice already.

Oh, and my manager asked me to.
So there's that.(1)
{ .annotate }

1. :wave: Dallas

## "Ya, but what have you _actually_ built with AI?"

Fair point.
Many people see posts online of people touting their productivity gains via AI but no one shares their work.
So here's what I've contributed to and built since I started using CC.

* A Claude Project to help me navigate and plan out an exercise regimen and diet after getting a scary health diagnosis in the beginning of 2025 that basically required me to either change my lifestyle or get to dying.
    * Claude was able
* Knowledge Base via Obsidian
    * This one I obviously can't link to as it's my personal knowledge base, but I used CC to organize my Obsidian vaults into a format I actually use. I also record myself ranting about my day and have it fill in my daily journal entry with the transcript.
    * Also an [MCP Server](https://github.com/napcs/mcp-knowledge-base) I want to try.
* [`fountain-py`](https://github.com/MasonEgger/fountain-py/tree/init-version)
    * My first AI project. A Python library to parse [Fountain](https://fountain.io/) syntax.
* A [`homedir` repo](https://github.com/MasonEgger/homedir)
    * I have long wanted to automate setting up my personal environment using Ansible. CC did it for me super quick.
    * I also love writing Python CLI tools. Now CC does that and installs them.
    * I'm constantly iterating on this repo, and this is where all my `.claude` files are.
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

1. Read his thoughts on what AI means for software engineering in his [recent blog](https://temporal.io/blog/what-will-ai-do-to-your-career).

So ya, people are building really cool shit with it.

## WARNING: READ BEFORE PROCEEDING

I'm about to deep dive into my entire workflow for CC.
This is what works for me after I have spent _hours_ using the tool.
So I want to put a few disclaimers/warnings before I proceed.

### Your Mileage May Vary

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

### You DO NOT Have to Start Out with Something This Complex

There was a _hilarious_(1) tweet thread a few weeks ago where [Boris Cherny](https://x.com/bcherny)(2), the creator of CC, [detailed his _vanilla_ usage of CC](https://x.com/bcherny/status/2007179832300581177?lang=en) and then proceeded to drop one of the most complex setup that looked like it was trying to cover every feature of the tool.
While I, an experienced CC user at the time of reading, got a lot of valuable information out of it, had I read this last summer when I was just learning how to use CC I would have rightfully shit my pants.
{ .annotate }

1. At least to me.
2. All hail Boris Cherny.

A **vanilla** setup of CC is installing the tool and then running the `claude` command.
That's it.
Out of box defaults.
And I know **many** people who are **wildly successful** using AI in their daily work who use Claude this way.
So don't think you _**need**_ this wild ass setup that I'm about to show you.
You most certainly do not.

My journey is that when I found that I was either struggling to accomplish a task with the current setup, I went looking for a new feature to solve **that problem.**
Slowly over time as I attempted to tackle harder and harder problems I needed more customization and **then** went searching for new tooling.
So my advice to you is straightforward: **Start out with the most minimal use of CC you can, and only dive into new features when you actually need them.**
This will save you the flailing that is trying to keep up with everything that is constantly changing.

### This Blog Will Be Outdated Within a Few Minutes of Publication

Yes, this space _does_ move that fast.
I've been working on this blog for months.
What keeps slowing me down?
Every time I get ready to publish **Anthropic changes shit again.**
Seriously, Opus 4.6 came out the day I was set to publish this, and then I had to go back and make sure everything still worked the way I thought it did(1).
So I'm finally just saying fuck it and publishing this thing.
I've updated everything in here as of the date of publication, and I likely won't come back.
I'll just write a new blog saying what I've changed and link to it from the bottom.
{ .annotate }

1. Spoiler alert, it didn't.

Anyways, without any further ado, hold on to your butts.

![Hold on to your butts gif from Jurassic Park](https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjE3MWVrMTRueTBscHMzaDB5bjR3dWY4M3o0dTcxM2lqaHRkcGpjbyZlcD12MV9naWZzX3NlYXJjaCZjdD1n/OCu7zWojqFA1W/giphy.gif)

## My Environment Setup - Vanilla CC

So first let's start with the foundation. 
I run CC solely in the terminal, either on iTerm2 or the Windows Terminal, depending on if it's my work or personal machine.
I use the [native installer for the OS now](https://code.claude.com/docs/en/overview), which is easier than maintaining an npm environment as I rarely touch JavaScript.
This is also now the recommended way, so there's that.

When developing I use the [plugin for VSCode](https://marketplace.visualstudio.com/items?itemName=anthropic.claude-code) to view the suggested diffs sometimes.
It mostly depends on if I remember to run `/ide` and if it's working that day. 
I do not use the VSCode plugin to run CC commands in the side bar. 
This gives too much of a Cursor vibe and I'm just not a fan of the UX.
I live in the command line, so having one screen as my terminal and the other as my editor is what feels most natural for me.
However, if you like having an all-in-one window with CC in your VSCode, then this plugin is for you.

And finally, I use `tmux` for managing different sessions and windows.
I tend to have a CC session running in one window, then multiple other windows for manually testing or tweaking things while working.
I very often will start a project in one session, then either come to a stopping point or need to work on something else, and detach the session and start a new one.
When I want to resume working on a project, I just re-attach the session. 

And that's it.
I don't use any AI task management tools like Beads or Gastown(1).
I don't use OpenCode or another harness.
This isn't for any deep reason, it's mostly that I don't find much value in switching between different provide models(2).
{ .annotate }

1. The opinion on these is very mixed, and until I find myself absolutely needing them I wont add them.
2. The way I see it, the model races very much mimic a Formula 1 race right now. One pulls ahead by an inch, then another pulls ahead by an inch. Back and forth over and over. If the latest Anthropic model isn't "The best model on the market" right now, I really don't care. It will be in a few months.

I've always been a minimalistic tool user, and my CC setup is no exception. 

## Past Here There Be Dragons

Ok, you made it this far.
Congrats!
If you're new to CC, I recommend you get used to playing with it in the configuration mentioned above for a few days/weeks to get accustomed to using the tool. 
I know _many_ people who use vanilla CC and get remarkable amounts of work done. 
Learn the tool, learn what you like about it and where it annoys you.
Can you think of shortcuts that would make life easier?
That's what eventually happened to me.
I got tired of retyping prompts, so I went searching and found commands(1).
And then it all kind of snowballed from here.
{ .annotate }

1. And now I spend countless hours reading docs, tweets, blogs, anything I can on new improvements. Hell I used it so hard I got added to the Claude Code Ambassador program. 

![Alice falling down the rabbit hole](https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExdWI3aTI0M2VqNWwyZXh6bGxiZ2NhaHFla3puamdmZ2JrOHM5bHdjdSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/swtiK9jRfE0zS/giphy.gif)

So I warn you, once you start down this path you'll become obsessed with it.
You'll stay up at night reading blogs or creating custom sub-agents(1).
This shit is **fun**.
You're going to want **more**.
And you'll eventually be filled with Lebensverantwortungsvedingteroboterassistentenbastelprojektverzichtstraurigkeit(2).
**You've been warned.**
{ .annotate }

1. Or writing a multi-part blog series that will be labeled as "Exhibit A" when I finally snap and start trying to train chickens to cluck in four part harmony.
2. My buddy and sometimes co-author [Steve Androulakis](https://www.linkedin.com/in/steveandroulakis/) and I discussed what a German word would be for "The sadness of wanting to work on projects with AI, but having to focus on one's real life priorities instead" and Claude came up with this, which roughly translates to "life-responsibility-conditioned robot-assistant tinkering-project renunciation sadness" which I think hits the nail on the head.

## How I Tune My `CLAUDE.md` Files

Let's start with the first thing a new CC user is likely to start tweaking, which is their `CLAUDE.md` file.

`CLAUDE.md` is a file that helps manage Claude's memory.
It is a markdown file that you write and maintain with various instructions, rules, and preferences you want Claude to "remember" every time you launch it. 
However, there are various locations where a `CLAUDE.md` can live, and how they are loaded depends on where the file lives.
The three main types to know about are your **global**, **project**, and **subdirectory** `CLAUDE.md` files.

### Global

A global `CLAUDE.md` file is exactly what it sounds like.
It's global.
It is loaded in at every session.
This is where you put context that you want Claude to always know when you work with it.
These are very abstract rules, such as coding style, communication style, and your core programming principles and beliefs.

I spent many hours tuning my `CLAUDE.md` file when I first got started.
I was initially inspired by [Harper Reed's Blog](https://harper.blog/2025/05/08/basic-claude-code/) detailing how he set his up, and took a lot of inspiration for mine. 
My `CLAUDE.md` contains sections that define the relationship between me and CC(1), my general philosophy on how I want it to write code, and how it should ask for help when it's stuck.
You can view my global [`CLAUDE.md` in my `homedir` repo](https://github.com/MasonEgger/homedir/blob/main/.claude/CLAUDE.md).
{ .annotate }

1. There have been posts where people say if Claude "views you as a partner" it performs better. I have no idea if this is true, but again, it's working so I don't touch it.

Now a days I don't tweak it as much.
I think eventually you get familiar with the consistency of the output and you learn to work around whatever inefficiencies there are. 
And since there's no easy way to test changes to this, you kind of get stuck believing in something you don't know is actually working.
For example, I'm not certain how much the "Our relationship" section actually matters.
However, my CC sessions do rigorously follow Test Drive Development, so I know that _that_ section is working. 
Either way, it is 100% worth experimenting with until your CC experience is where you want it to be.
It will save you a ton of constantly re-explaining your core principles(1).
{ .annotate }

1. A please, steal mine and use it. I took it from Harper Reed. Hooray Open Source!

### Project

Next is your project level `CLAUDE.md`.
This file contains project specific rules that CC follows when you launch the app in that directory.
While you can write this by hand, I find that running `/init` religiously is the way to go.
Depending on the state of my project, I follow two different flows for using `/init`.

???+ info "What the hell is `/init`?"

    Welcome to CC commands, also known as "slash-commands"!
    These are commands you run in your CC terminal and act as shortcuts for various things.
    There are default ones, or you can implement your own, which we'll cover later. 

    `/init` is a slash-command that comes with CC that will read your project and write or update your `CLAUDE.md` file.

If the project is brand new, I will run `/init` from the very beginning.
This may generate a blank `CLAUDE.md` or something very minimal.
That's fine, let's get it into the git history ASAP so we can track it over time(1).
Then as I work on the project I run `/init` before every commit.
This updates the `CLAUDE.md` file with the latest changes, readying it for commit.
Always review this and make sure that it's up to date.
Lies in your `CLAUDE.md` will make it into your code.
{ .annotate }

1. Yes! You should track this in a VCS!

Now if the project is established I will still run `/init`.
This will cause Claude to scan the project and get an idea of what's going on.
I use this as an opportunity to not only setup CC for success, but also to get an understanding of the project myself.
I tend to critique this run of `/init` more, mostly because practices have already been established and I don't want to mess anything up.

Now once the `/init` is done in either type of project and a `CLAUDE.md` is created, I will still manually edit it from time to time.
Sometimes Claude just doesn't get it, or leaves out something I think is important.
Or my code is so bad it got confused and now I need to clean it up, because an off-label use case of `/init` is to use it to critique your code.

### `/init` is a Snitch

Do you have a bunch of dead code in your project?
Maybe you switched package managers but never cleaned up the old package files?(1)
Are there functions that just absolutely heinous practice and you can't believe they are still in the codebase? 
If there are, `/init` will find them and highlight them in your `CLAUDE.md` file.
{ .annotate }

1. Like I did when I moved from `requirements.txt` to `pyproject.toml`.

Not intentionally mind you.
It isn't trying to find bad code.
But what it does is determine patterns, naming conventions, package management, run instructions, everything.
If you have cruft in your codebase CC will identify this and try to put it in the `CLAUDE.md` so it knows how to deal with it.
So that shitty function that goes against all your best practices may become enshrined in the instructions you feed to CC every time.
And then Claude writes more shitty functions because that's what you have in your codebase so it must be what you want(1).
**This is how you get slop.**
{ .annotate }

1. And as my dad likes to say "That's like wiping your ass on a wagon wheel. Shit just keeps coming around."

So pay attention to those `CLAUDE.md` changes.
Might save you a migraine later.

### Subdirectory 

Subdirectory `CLAUDE.md` files are files that exist within a project that already has a `CLAUDE.md` at the root level.
These are useful for mono-repositories or adding more specific context to a subset of files.
The neat thing is these aren't loaded at init time by CC, but rather conditionally loaded when CC has to do something with a file in that directory. 
If you start putting these in all of your subdirectories, you may want to link to them from your project `CLAUDE.md` that is at the root level. 
A standard Markdown link with a short description will work. 
Once you go down this rabbit hole though, you may need to manually trim your top level `CLAUDE.md` and worry more about information architecture.

Currently I don't have anything big enough to warrant the use of this feature.
I tend to split things up into many repositories rather than use a monorepo. 
That being said, I always do keep this in my back pocket on the off chance I need it in the future.

## Let's Customize It Some More!

Thought we were done?
Nope.
Still a ton to do. 
For the first few weeks I used CC with a custom `CLAUDE.md` as my only change to great effect.
But as I was working I found myself repeating various tasks and writing a variation of the same prompt over and over.
So I dove a little deeper into the options for CC and found exactly what I was looking for, custom commands.

**Already know the CC features and just want to see my workflows? [Jump to the "My Workflows" section](#my-programming-workflows).**

### Commands

_stored in `commands/` in your `.claude/` directory, either global or local_

I've always been a CLI person. 
The fact that CC is a CLI interface sparks joy.
And I've always loved writing CLI tools, so getting to add custom commands into CC made my day when I found out.

Commands are custom prompts that you write that you can trigger from within a CC session.
This allowed me to focus on prompt engineering and crafting reusable, portable prompts that I could incorporate into various workflows. 
This greatly sped up my development process, and shifted my focus from "Hey Claude, do this in this repo" to creating a process to follow for agentic coding.

They can also be used to conditionally load in context.
Say you have a set of rules you want to follow when you're developing Python.
You _could_ just put these in your global `CLAUDE.md` but now you're loading them for every single session. 
This may be great if you only ever write Python, but if you do anything else it's a waste of the context.
You _could_ put them in a `CLAUDE.md` that is local to the repository.
There is some merit to this, as now everyone who uses CC on your codebase is following your rules, but now your rules are in _every_ repository you manage.
That's a lot of duplicated work.
What if you change your mind on variable naming convention?
Now you have to update them everywhere.
What I really want is to load those rules when you're _actually_ writing Python, either automatically or by me triggering them.
I was just starting to get into this use case when CC introduced skills.

Commands are my primary way of interacting with CC.
I used to tweak them a lot, but now I'm pretty settled in my setup.
**Use commands as hotkeys to common tasks and build workflows around them.**
You can view my commands on my [GitHub](https://github.com/MasonEgger/homedir/tree/main/.claude/commands)

???+ Warning "Commands have merged with Skills" 

    During the middle of writing this blog(1) Anthropic decided to merge Commands with Skills. 
    They say this is because they sort of accomplish the same thing, which is the conditional context loading. 
    While true, I find it partly true and discounts the common case of just repeating the same prompt on different inputs.
    While I don't particularly agree with the reasoning, it doesn't really affect much as they preserved backwards compatibility and added features to address my concerns.
    I'll probably eventually refactor my commands to be only user invocable Skills eventually, but it's not high on my priority list.
    { .annotate }

    1. This is the hell of writing about AI. They say that tech books were out of date the moment the ink dried. Well AI blogs are out of date as soon as the TCP handshake completes to the blog you're trying to read.

### Skills

_stored in `skills/` in your `.claude/` directory, either global or local_

I've never been happier for a feature release in software than I was for Skills.
Prior to the release I was building out my own hacky version where I had Commands `list-context` and `load-context` that would enumerate a directory of documents and let me conditionally load them instead of having to make a command for each one.
Then Skills released and I threw that work away. 

[Skills](https://code.claude.com/docs/en/skills) are collection of instructions, resources, and tools that CC can conditionally load when it determines you need to use that Skill.
You provide a **short** top level `SKILL.md` with instructions, then various resources it can read when it needs to load more context around a specific task.

For example, say I have a `python` skill.
The top level `SKILL.md` should have the prime directives(1) for the Skill.
So in my [Python Skill](https://github.com/MasonEgger/homedir/blob/main/.claude/skills/python/SKILL.md) I give it core requirements it **MUST** follow, then I provide it a list of references given certain scenarios (toolchain, writing a CLI, docstrings) that it can load _when it is actually working on those types of tasks_.
You can also provide `scripts`, which are executable files that CC can use while working with this skill.
Have a specific template you want it to follow?
Or some examples for it to follow?
Add those to the Skill as well. 
The Skill is a container for what "correct" looks like to you and tools to help CC get there.
{ .annotate }

1. I always wanted a reason to use that phrase in a blog. Yay!

Now of course, this thing still misses sometimes.
Skills don't always get invoked(1), hooray non-determistic systems(2)!
I always watch very closely to ensure the Skill is invoked (it'll say this in the output of CC).
If it's not, I stop it and manually invoke it.
You can also implement a [Hook](https://code.claude.com/docs/en/hooks) to force it to invoke it on a per-project basis, or include it in the local `CLAUDE.md`.
People are still figuring out how to make Skills invoke consistently.
They do a decent job, but you should still keep an eye on it.
{ .annotate }

1. Which is just another point in my column when I say you **have to watch this shit as it cooks** or you're gonna have a bad day.
2. I have a draft blog on this that I might post eventually.

### MCP Servers

_stored in various config files in your `.claude/` depending on scope_

Oh joy, the favorite word of every tech bro in the valley for the last six months, MCP!
MCP stands for Model Context Protocol, and is just a fancy way for AI to communicate with AI enabled services.
For example, CC doesn't natively know how to charge something to my personal PayPal account, but with the PayPal MCP connection I could give it access to my account and have it make purchases for me(1).
Think REST API, but for AI.
{ .annotate }

1. This _still_ sounds like a recipe for disaster. I do a good enough job burning my own money I don't need AIs help.

Where MCP is useful for CC is you can attach it to various tools to give it the ability to get "verified" knowledge and perform actions for you across multiple systems.
Personally, I don't use MCP that much.
For the longest time there was an issue with CC loading the entire MCP context into your session and blowing out the context window.
And honestly, I have bash.
I don't need MCP for 95% of things.
However, there are a few MCP servers I enjoy.
Temporal has a knowledge base MCP server that ties into their docs, community forums, and certain curated community slack messages where a good answer was provide. 
I also _love_ the Playwright MCP server for testing web UIs and all sorts of stuff. 
But personally, I'd rather use a Skill for knowledge or write a little tool(1) that CC can use.
{ .annotate }

1. And by "write a little tool" I mean "Ask CC to write it for me".

### Subagents

_stored in `agents/` in your `.claude/` directory, either global or local_

Now to my least favorite feature, subagents.
I know _maaaany_ people who swear by these things, but I'm still hung up on the whole "Just let it cook and eat the dinner" idea.
With subagents you offload a task to what amounts to a CC child process with it's own context window, and it comes back when it's done.
You don't have control over it, you don't get to review anything until it's done.

Don't get me wrong, I can see how this is useful and why people love it, it's just **not** how I want to interact with AI.
At least, not for primary code writing purposes.
I have one subagent I've been working on that I want to use as a copy-editor using [`vale`](https://vale.sh/docs/cli).

What's odd though, is I got early access to CC Teams (then called Swarms), and I like it for very specific tasks.
Teams are multiple subagents running in parallel that have a shared task list, a team leader, and are able to communicate bi-directionally with both the team leader and each other. 
While this sounds more chaotic than a single subagent(1), it's really useful for fanning out a project where the size of the context can't be held in a single agent.
I tried out this feature to build a prototype of a Temporal Skill in all six programming languages spanning every feature in Temporal.
The swarm read from over 40 GitHub repositories, crafted a plan, worked collaboratively and build a pretty damn good Skill.
My work is being directly used in the official Temporal Skill, so I don't plan on updating it, but it made me realize there are use cases for subagents big and small.
OpenClaw also has me curious, so I'll report back in a bit about my experience with them.
{ .annotate }

1. And based off the early access feedback chaos was common.

### Plugins

Wow!

![That is one big pile of shit gif from Jurassic Park](https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExdzAzaTV4ZzFpYzk3ZDZhdGY0N2EycDV6cW5raGdtanY5ajR2YmkyNiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/hwdr7pvte2yVW/giphy.gif)

So many features and I guarantee you I missed some.
Your `.claude` directory is looking more complex than your actual project.
Luckily, there is a way to organize all of this, and that's with Plugins.

[Plugins](https://code.claude.com/docs/en/plugins) are a collection of relates Skills, Agents, Commands, MCP Servers, Hooks, resources, and more.
It also provides namespacing for your command, something like `/dev:python`.
Currently I haven't organized anything into a plugin, but I'm thinking about it.

## Core Principles

Ok, so that's my toolkit.
But how do I actually _use_ it?
For this blog, I'm going to focus solely on my programming workflows.
I'll write a separate blog in the future for my non-programming use cases.
Before I proceed to my Workflows(1), I need to cover the Core Principles of agentic development that guide me.
{ .annotate }

1. I know, it's getting long. I warned you up top. I tried to not include this. I tried to put it elsewhere. But you can't be successful with my workflow if you don't at _least_ understand what governed me when I wrote it and hopefully _at best_ adopt these principles yourself.

### This is MY Code, Not AI Code

I often hear people blame AI generated code for things.
"AI put a security vulnerability in my code."
"AI submitted a trash pull request."
"This function is shit because AI wrote it."
And while I get the desire to shift blame onto an inanimate object that cant' defend itself(1), this leads us down a dangerous road.
{ .annotate }

1. Or just sycophantically apologize.

There is no "AI Code" vs. "Human Code".
There is just Human code(1).
While AI may have _generated_ the code, at some point a human was involved to provoke it.
Opus 4.6 didn't wake up one morning, yarn, stretch, and say "I'm going to rewrite the entire universe in Rust!".
Someone had to start that process.
And if you _start_ that process, you're **responsible** for it.
{ .annotate }

1. Until Skynet, but at that point it wont matter anymore.

Look at it this way.
Say you're using a code project generator to generate starting boilerplate.
Somewhere in that code there's a bug you miss and you commit it to a repository.
It somehow slips through code review(1) and makes it to production.
During regular production, a flaw is exploited causing the application to crash, costing the company money.
Who's fault is it, the engineer or the project generator?
Or maybe a better question, who can actually be punished for such an error?
It's the same with AI code.
{ .annotate }

1. If you even do those. I've seen orgs that don't....

Once the code becomes a pull request, it ceases being AI code and starts becoming _your_ code.
It's your name on the merge, release, feature, etc..
You are responsible for it.
Doesn't matter who or what wrote it, it's yours.
Own it.

It's for this reason that I _always_ review any code that AI produces.
**If I don't understand it, it doesn't get committed.**
It's my name.
We often forget that **software has consequences**.
My colleagues trust that I produce good work.
My open source communities trust that I don't provide them with buggy or worse vulnerable code.
In this quickly accelerating world AI generated code, don't tarnish your reputation because you're being lazy.

### Rules for Thee, Not for Me

The boundaries and rules we give our agents are called Guardrails.
Imagine them like the bumpers in bowling that prevent you from rolling a gutter ball.
They don't guarantee a strike, but they prevent the worst case scenarios.
We have to provide guardrails to our agents as they write code to prevent them from going completely off the rail(1).
Coding agents are often unpredictable.
Sure they get better and better every day, but they sometimes go down a rabbit hole of nonsense and produce woefully inaccurate crap.
Turns out, we already have the tools necessary, and it's the things most developers loathe.
You guessed it, testing!
{ .annotate }

1. See what I did there?

While many developers bemoan testing, it turns out AI _loves_ structure.
Any tool the agent can use to validate its goal enhances the capabilities of the agent and lowers the likelihood of failure.
So make CC do **Test Driven Development**. 
I do.
You can see it in my [global `CLAUDE.md` file](https://github.com/MasonEgger/homedir/blob/main/.claude/CLAUDE.md?plain=1#L13).
Have AI write the tests first, _then_ write the implementation.
This works _remarkably_ well as it causes the agent to predict failure cases and "think" more about the different code paths.
My success rate when I switched to making CC do this doubled.
It seemed like I couldn't miss when writing code.
Adding new features was simple because if CC rewrote something it shouldn't, the breakage was immediately apparent.
**AND** my code was well tested and maintained. 

Want to take it a step further?
Check for coverage.
Have CC aim for 100% test coverage of your code.
You do have to keep an eye on this though, because CC likes to take initiative.
And by that it will test **everything** when not everything needs to be tested.
Like checking to see if an import from the standard library can be resolved.
I've had to tweak my CC sessions to have it only test the _logic_ of my application and not if a library can be imported. 
So while it can be a little excessive, I'd rather have it and not need it than need it and not have it.

Still not satisfied?
Add some linters!
Mandate proper formatting!
Are you writing in Python?
Use type hints!
Y'all know Python is my favorite language.
I love the freedom and flexibility it gives me, but that comes with a cost.
One of those costs is Python's typing.
I think this function that I wrote takes a string, but CC came through on a pass and messed it up, and now expects a 1998 Toyota Corolla.
So use a type checker to make sure that what you expect is what is _actually_ happening.

So lint the fuck out of your project.
What's the worst that can happen?
You waste a few seconds?
Seems like a fair trade to me.

### ~~Cattle~~ Context, not Pets

Next let's talk about context management.
How AI manages context is one of the primary discussion points around improving AI performance and the tooling gets better every day.
Mishandling of context leads to the "dreaded context rot"(1), where the performance of AI degrades the longer you interact within a certain session.
Essentially, the longer you chat with an AI, the worse the performance gets, so we have to develop strategies for handling this.
{ .annotate }

1. If this is not the name of the company death metal band from Anthropic I'm going to be sad.

Now the way I handle context is similar to an SRE adage "Cattle, not Pets".

My philoshophy is simple. 
I use one session per task.
I review the code, and ensure functionality was achieved.
I update relevant context files like the local `CLAUDE.md` using `/init`.
I create a summary of the session and store it in the repo(1).
I commit the code to GitHub.
Then I use `/clear` to clear the entire context window, and start with the next task.
{ .annotate }

1. More on this in the next section. Don't get ahead of me.

Every task is a new beginning.
A new chance to get it right or fuck it all up.
And whether it's successful or not will depend if I properly maintained the history and roadmap **external to the agent**.
This true crux of it.
While different tools have gotten a **lot** better at maintaining context, it wasn't always that way.
And regressions can happen.
Like most backend engineers, I reserve the right to fire my tools at any point.
While I'm loving CC now, that doesn't mean I wont eventually try out Codex.
If my history is locked in a tool, I'm locked in as well.

"But what about compaction? It's gotten a lot better since you started."
True, and while the auto-compaction has gotten a _lot_ better over the last six months, I still don't trust it as far as I can throw my 110 chocolate chonk of a labrador(1).
So much so that when I see the warning appear that compaction is near, I start paying extra attention to the outputs as I no longer trust them.
And 9 times out of 10, if I see it start to compact, I actually stop the process and revert the entire session(2).
{ .annotate }

1. He used to _love_ getting thrown onto my bed as a baby. Now his fat ass can't figure out why daddy can't pick him up and throw him like I could when he was 10lbs. Daddy's back hurts Loki, jump up yourself.
2. I use `git` as my rewind mechanism. Every task is a commit, and if I don't like it I revert.

I actually see compaction as a code smell.
It means I didn't break the task down into small enough chunks. 
For me, 95% of the time I can perform a single task within the scope of a fresh context window.
And for that other 5%, I either refactor the plan to break it down more or switch to a model with a larger context window for that task.

So I don't baby my context window.
I just nuke it after every task and start over.
I built this concept after having been an SRE for many years. 
In the DevOps space there's a notion of "Cattle not pets" which essentially dictates building of systems that can be easily replaced instead of babying a VPS.
In this instance, I treat my context windows as cattle, not pets.
This accomplishes two things.
It maintains that minty freshness of the models at the beginning of a session we all love so much, and it requires me to be _very deliberate_ about how I manage context in my projects.
This, in-turn, leads to better performance _regardless_ if the compaction gets better.
I'm no longer dependent on the tool or the model.
I control the context window.

### Prompts are Code, and should be documented as such


    * If I don't understand it, it doesn't get committed

## Finally, the Damn Workflow

## The BPE Loop

The BPE Loop is probably not new, or something I invented.
I discovered it in [Harper Reed's Blog](https://harper.blog/2025/05/08/basic-claude-code/) during the early days of my CC adventure and have since iterated on it until I got it where I wanted it.

The mechanics of the loop are straightforward:

1. **Brainstorm** with the agent on your idea
2. Create a step-by-step **Plan** for implementing the project using your agent
3. **Execute** each step in the plan until the project is implemented.

Here's a visual representation of the Loop.

```mermaid
flowchart LR
    A[Brainstorm] --> B[Plan]
    B --> C[Execute Plan]
    C --> D{Complete?}
    D -->|No| C
    D -->|Yes| E[Done]
```

Now you may look at this and say "Damn that's a lot of process" for a fix that may take you five minutes.
True, and I don't use this for _everything_.

| Task | Prompts | BPE Loop |
| ---- | ------- | -------- |
| Greenfield project | ❌ | ✅ |
| Refactor or new feature on existing project | ❌ | ✅ |
| One off change or small task on existing project | ✅ | ❌ |

Each of these stages is a Command I've implemented, stored in my global `.claude/` directory so they're accessible in every session.


### Greenfield Project

The fun thing about programming with CC is you _finally_ get to build all the shit you've been wanting to build forever.
So this means you'll find yourself in a lot more greenfield projects than you normally would if you were just using this for work.



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





## What I Don't Optimize For

### Squeezing every bit of context I can 
            * I handle this differently
### Cost
            * Work plan FTW
            * Claude $100 Max plan gets me FAR
            * It's never that expensive anyway



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


