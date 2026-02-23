---
title: "Skills, Plugins, and MCP Oh My!"
description: "Here's where it gets fun, a deep dive into Claude Code's customization features."
date: 2026-02-25
categories:
    - Software Engineering
    - AI
    - Productivity
    - Brain Dump Ramblings on AI Series
tags:
    - Claude Code
authors:
    - masonegger
---

Looking for even _more_ Claude Code tips?
Never fear, I **definitely** have more.
This is where things get _interesting_...

<!-- more -->


![Ferris Bueler "You're still here?"](https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExOGV3cnYxenBnMGF0ejFxM2pwZ3l4bjZ3cGZhMGY0d29xcXl1d2JueiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/rBr2iU2Ip76HC/giphy.gif)

Dang. 
If I haven't scared you off yet nothing will.
Here's the magic behind customizing CC.

!!! warning "This blog is not self contained"

    This blog is the first one in this _long_ ass series that is not self contained.
    In the first blog I briefly touched on the concepts I will now dive **much deeper** into.
    That means that you **really should** read my [previous blog _How I Actually Use the Damn Thing_](017-claude-code.md) before reading this one.
    I'll be referring to things in the previous blog with little explanation, so if you don't read it you may get lost.

## Past Here There Be Dragons

Ok, you made it this far.
Congrats!
If you're new to CC, I recommend you get used to playing with it in the configuration mentioned in my [previous blog _How I Actually Use the Damn Thing_](017-claude-code.md) for a few days/weeks to get accustomed to using the tool.
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

## The Case _AGAINST_ Vanilla CC

Like I said above, there are **many people getting value out of vanilla CC**.
However, I often wonder how more productive those folks would be if they were to dive a little deeper into it.

There was a _hilarious_(1) tweet thread a few weeks ago where [Boris Cherny](https://x.com/bcherny)(2), the creator of CC, [detailed his _vanilla_ usage of CC](https://x.com/bcherny/status/2007179832300581177?lang=en) and then proceeded to drop one of the most complex setup that looked like it was trying to cover every feature of the tool.
While I, an experienced CC user at the time of reading, got a lot of valuable information out of it, had I read this last summer when I was just learning how to use CC I would have rightfully shit my pants.
{ .annotate }

1. At least to me.
2. All hail Boris Cherny.

Read any tweet thread on Twitter lately and you'll see a ton of people talking about tweaking their CC setup.
So it is common for people to dive deeper into this tool hoping to gain increased productivity.
However, customization for customization sake will likely hinder you and cause you to become dissatisfied with the tool.
My journey is that when I found that I was either struggling to accomplish a task with the current setup, I went looking for a new feature to solve **that problem.**
Slowly over time as I attempted to tackle harder and harder problems I needed more customization and **then** went searching for new tooling.
So my advice to you is straightforward: **Start out with the most minimal use of CC you can, and only dive into new features when you actually need them.**
This will save you the flailing that is trying to keep up with everything that is constantly changing.

Yes, this space _does_ move that fast.
I've been working on these blogs for months.
What keeps slowing me down?
Every time I get ready to publish **Anthropic changes shit again.**
Seriously, Opus 4.6 came out the day I was set to publish this, and then I had to go back and make sure everything still worked the way I thought it did(1).
So slow, steady, and **deliberate** will win you the race here.
{ .annotate }

1. Spoiler alert, it didn't.

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

1. And please, steal mine and use it. I took it from Harper Reed. Hooray Open Source!

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

Even if the project is already established, I still run `/init`.
This causes Claude to scan the project and understand what's going on.
I use this as an opportunity to not only set up CC for success, but also to get an understanding of the project myself.
I tend to critique this run of `/init` more, mostly because practices have already been established and I don't want to mess anything up.

Once `/init` is done and a `CLAUDE.md` is created, I still manually edit it from time to time.
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
I was just starting to get into this use case when CC introduced Skills.

Commands are my primary way of interacting with CC.
They run all of my workflows, and every time I come up with a new repeatable workflow my first instinct is to create a custom Command for it.
Treat commands like hotkeys.
Programmable tasks to accomplish a certain thing.
You can view my ever changing list of commands on my [GitHub](https://github.com/MasonEgger/homedir/tree/main/.claude/commands)

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
For example, say I have specific rules, preferences, tools, etc. that I always want to use when I write Python code.
I can then define a Python Skill with these preferences, which CC will then automatically load when it determines I'm writing Python code.

The structure of the Skill is just directories with Markdown.
You provide a **short** top level `SKILL.md` with instructions, then various resources it can read when it needs to load more context around a specific task.
The top level `SKILL.md` should have the prime directives(1) for the Skill.
These are things like you must do type hints, docstrings on all public interface, absolute imports.
Then there's a `Reference Files` section` that contains information on more specific Python topics.
I have a reference for how I want CLI scripts built, what my toolchain is, how documentation should be written etc.
Why not just put these in the `SKILL.md` and call it day?
Because that is needlessly loading information that CC may not need to work on this specific task.
CC reads the `SKILL.md` file and sees the links to the references with descriptions.
It then determines which of _those_ files it should read based on its understanding of the task it's currently working on.
You can see this in my [Python Skill](https://github.com/MasonEgger/homedir/blob/main/.claude/skills/python/SKILL.md).

Skills don't just contain reference materials though.
You can also provide `scripts/`, which are executable files that CC can use while working with this skill.
Have a specific template you want it to follow?
Or some examples for it to follow?
Add those to the Skill as well.
The Skill is a container for what "correct" looks like to you and tools to help CC get there.

Now of course, this thing still misses sometimes.
Skills don't always get invoked(1).
I always watch very closely to ensure the Skill is invoked (it'll say this in the output of CC).
If it's not, I stop it and manually invoke it.
You can also implement a [Hook](https://code.claude.com/docs/en/hooks) to force it to invoke it on a per-project basis, or include it in the local `CLAUDE.md`.
People are still figuring out how to make Skills invoke consistently.
They do a decent job, but you should still keep an eye on it.
{ .annotate }

1. Which is just another point in my column when I say you **have to watch this shit as it cooks** or you're gonna have a bad day.

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

[Plugins](https://code.claude.com/docs/en/plugins) are a collection of related Skills, Agents, Commands, MCP Servers, Hooks, resources, and more.
It also provides namespacing for your command, something like `/dev:python`.
Currently I haven't organized anything into a plugin, but I'm thinking about it.

## Random Tips I Couldn't Fit Into This Narrative

There's so many more random tips that I couldn't fit in here, but I would be remiss if I didn't share them.

1. Run CC in `Explanatory` mode to get explanations while it's running so you build an understanding of the app and maybe even learn something new.
    1. Use `/output-style` and change mode to `Explanatory`. Want to pair-program with CC? Change the mode to `Learning`.
1. Load in known good samples or documentation for CC to use.
    1. Don't just dump the entire docs or samples repo in your project folder. Pull it down on the same level as your project directory and use `/add-dir` to add it and look in there for good examples.
1. Want to save the raw text of the session to share with someone or for archival purposes?
    1. `/export`
1. Did you close a session on accident and lose it? 
    1. `/resume`
1. Do you want `vim` keybindings for everything in your life?
    1. `/vim`

That's all I could think of.
And no, I don't use `/vim` mode.
I have enough mind goblins, I don't need `vim` creating more(1).
{ .annotate }

1. And this is coming from a recovering `vim` user. Don't come at me thinking I use `emacs`. `emacs` is a great operating system. Too bad they didn't implement a decent text editor.

## Weird Shit That I Do That I Can't Explain but It Helps

And now for the goofy shit that I can't explain but it works.

![Gif of monty python and the ministry of silly walks](https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExbm42M3ZkNjZxaWlwMTVtYjRucHR2dGh0dXBxZ2tlc3VxenBubGJoMCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/qcgtyllMthBL2/giphy.gif)

First, I have often said I get the best results from CC when I use my "teacher voice"(1).
What this means is I'm typically over explanatory and treat it like a student who's doing well but needs correction.
When it makes a mistake, I don't tell it "Hey, you messed up here", I ask it "Did you implement what was in the plan?"
Or if the mistake is something that I know exists in my Skills or `CLAUDE.md`, I'll ask it "Did you follow the best practices we have laid out?" it will actually load those in and determine if it followed them or not.
It often determines it hasn't and then goes back and fixes it, but sometimes it had a good reason and it explains why and I decide if that's a good enough reason to break the rules.
Where I think this has real power is I often see this dialogue captured in the session summary portion in the lessons learned session.
So on the next session it reads this in and learns from its mistakes.
Also as I run `/init` to update the local `CLAUDE.md` it will put these in here, either by specific rule or a more broad "Be sure to load the Python Skill and follow it".
This practice leads to my sessions getting better over time as the code base grows, not degrading. 
{ .annotate }

1. Turns out using millennia old teaching techniques works on children and AI. How neat.

Secondly, I don't trust compaction at all.
While the auto-compaction has gotten a _lot_ better over the last six months, I still don't trust it as far as I can throw my 110 chocolate chonk of a labrador(1).
So much so that when I see the warning appear that compaction is near, I start paying extra attention to the outputs as I no longer trust them.
And 9 times out of 10, if I see it start to compact, I actually stop the process and revert the entire session(2).
{ .annotate }

1. He used to _LOVE_ getting thrown onto my bed as a baby. Now his fat ass can't figure out why daddy can't pick him up and throw him like I could when he was 10lbs. Daddy's back hurts Loki, jump up yourself.
2. I use `git` as my rewind mechanism. Every task is a commit, and if I don't like it I revert.

I actually see compaction as a code smell.
It means I didn't break the task down into small enough chunks. 
For me, 95% of the time I can perform a single task within the scope of a fresh context window.
And for that other 5%, I either refactor the plan to break it down more or switch to a model with a larger context window for that task.

And lastly, if you're working on documentation or text, telling CC to "copy this text and update it" tends to yield much more faithful outputs than if you ask it to "read it, update it, and write it to this file". 
While the models have gotten better about not hallucinating when they do this, the larger the file the more likely this will happen.
So if you are converting a quickstart guide from Python to Ruby, have it copy the file _then_ read it and update it. 
The end result will be better.

## And That's Just What I've Done So Far

You made it to the end!
Feeling a little light headed?
Ya, CC can do that to you.

This is everything I can think of on all the weird ass ways I make CC produce what I want it to.
If I think of more, I'll write another blog.
But now, after writing over 20,000 words on this topic, I'm going to hibernate.
Hope you enjoyed.


!!! abstract "Part 5 of 5 of my `Brain Dump Ramblings on AI` blog series"

    Check out the other parts of this series:

    * Part 1 - **[We're Witnessing the Evolution of Software Engineering](014-software-engineering-evolution.md)** discusses the historical context and ongoing evolution of software engineering up to the advent of AI.
    * Part 2 - **[Code is Cheap, Don't Devalue Yourself](015-code-is-cheap.md)** discusses AI and it's impact on the software engineering discipline.
    * Part 3 - **[What I Found Actually Works with AI](016-ai-principles.md)** - The do's and don'ts that guide everything I do.
    * Part 4 - **[How I Actually Use the Damn Thing](017-claude-code.md)** - My journey with Claude Code and my tips and tricks for getting started.

*[CC]: Claude Code
