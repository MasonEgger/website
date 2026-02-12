---
title: "Code is Now Cheap, Don't Devalue Yourself"
description: "In respect to adopting AI, as my great-grandmother would say, it's time to shit or get off the pot."
date: 2026-02-05
categories:
    - Software Engineering
    - AI
    - Brain Dump Ramblings on AI Series
tags:
    - LLMs
authors:
    - masonegger
---

AI is taking the world by storm, and no place more heavily than the software engineering industry.
Agents are writing non-trivial percentages of production code bases to systems you are using every day now.
What was once a scarce resource, code, is now cheaper than it's ever been.
What it means to be a software engineer is changing fast, and those that don't adapt risk being left behind.
So, in respect to adopting AI, as my great-grandmother would say, it's time to shit or get off the pot.

<!-- more -->

## The $500 Button

There's an old parable in the consultant world about a client who has to call in an expert to fix a machine.
The expert walks in, studies the machine for a minute, and then pushes a single button.
Instantly, the machine turns back on and resumes its task.

The consultant then turns to the customer and says "That'll be \$500."
The client, flabbergasted, cannot believe it costs this much.
"\$500!" he exclaims, "You barely spent 5 minutes on the issues! And you only pressed one button!"
The consultant looks him in the eye and says "You don't pay me to push the button, you pay me to know which button to push."

This little fable has always been true of any form of skilled labor.
This is why if you talk to experienced consultants, they rarely charge by the hour, but rather by project.
Why should they be paid less for their expertise?

This has always been true for software engineering.
We just convinced ourselves, and more importantly our employers, that the button-pushing was the hard part.
And AI is exposing a harsh reality that many software engineers don't want to face.
That writing the code was _never_ the hard part.

## Code is Cheap

Like it or not, we're experiencing a transformative moment in the software engineering industry(1).
AI has entered the scene, and it's about to change how we do our jobs permanently.
It's a faster programmer than you.
It knows more programming languages, syntax, algorithms, design patterns than you(2).
It has more energy than you.
{ .annotate }

1. Very much akin to what Dorothy Vaughan and her Computers faced at NASA. Read the first [blog](014-software-engineering-evolution.md) in this series for more details about that.
2. Remember those LeetCode questions we all love so much? Done for. No more trying to figure out how to get the fucking wolf, chicken, and grain across the river.

Gone are the days where someone could just sit in a corner, pull down tickets, and code for 8 hours a day.
Arcane syntax knowledge, breadths of knowledge, and typing speeds are no longer differentiators.
AI has leveled the playing field.
Anyone can bang out a prototype overnight now.
Need that legacy system ported from Perl to Python?
No sweat.

And you know what?
**Who gives a shit?**
Are you jealous of your car because it can carry more weight than you can?
No?
Then why are you worried about some machine that generates code?
You still have to guide it.
You still have to tell it what to do and what to build.
The value of software engineering is _not_ the code, it's the product.
And that's where I think software engineers have lost their way over recent years.
The job of a software engineer is **not** to write code.
It is to solve problems.
To create a product that customers pay for so the company can in return give you a salary.
For a while, the primary way of achieving this was with code.
And now that's changed.
The _problems_ didn't go away.
The way **you** solve the problems changed.

So why are people so terrified right now?
Because a lot of people valued the wrong thing.
They valued the knowledge of the implementation more than the wisdom of the design.
Instead of being able to explain their choices, diagram out the design, document it, and then begin implementing, we chose to just bang away at the keyboard until shit worked(1).
{ .annotate }

1. And I 100% blame Agile for this. This move fast and break shit mentality created a **ton** of immature engineers who just slap shit together and call it a release. As we're seeing, that shit ain't gonna fly in AI coding.

And to be fair, you have every right to be terrified right now.
For many years we told people "Just learn how to code and you'll have a good, middle class life".
Code is no longer the bottleneck.
**Code is cheaper than it ever has been, and the most expensive it ever will be again.**

But if it takes you a day to write a 10,000 line application and it takes AI an hour to implement and then it takes you an hour to review it, the math is obvious.
The reward **far** outweighs the risk.

## "But what about all the mistakes AI makes?"

Yeah, AI hallucinates.
It will sometimes get things wrong.
It will even lie to you so convincingly you'll think it's a sociopath(1).
{ .annotate }

1. You used to just have to be bad at hiring to get people like this in your org. Now, you can purchase it for a premium and run it on GPUs.

But regardless of that, your existing guardrails _should_ catch most of this.
You know, those things called tests, linters, type checkers, etc.
AI works best when it has guardrails, and it can even run those for you!
So if you're worried, don't be!
I'm sure your fully implemented, functioning, up to date quality assurance pipelines will catch the issues.

**If you're feeling uncomfortable right now, that's on you, not the AI. Get your shit together.**

And what about the flip side?
Do you write code perfectly the first time, every single time?
No, you don't(1).
People sit here and expect to be able to one shot an application with AI when they couldn't even do that. 
{ .annotate }

1. And if you try to tell me you do you're lying to me, and you're lying to yourself.

> "Oh no, my magic box that knows damn near everything left a security vulnerability that normally only I make, but it _didn't_ make the nine other syntax errors I usually do. Fucking piece of shit! Guess it's useless." - One sad, lonely brain cell

At the end of the day, **you're still responsible for the code you push to production.**
Shocking right?
It's like we all forgot that when AI started writing code.
Like we aren't supposed to review it, or that because a robot wrote it we are now magically absolved of the consequences.

This is my personal philosophy(1) on AI generated code.
I use AI to write the vast majority of my code currently.
But I review every single line of code it writes.
I don't accept a change unless I understand what it's doing and why it's needed.
Because by the time it becomes a pull request, it is no longer "AI code".
It's my code.
My name is on the pull request.
I am responsible for it.
Blindly accepting AI code and then just yeeting it over the wall for someone else to review is an absolute asshole thing to do.
It shows complete contempt for that person's time, and a lack of pride in your own work.
{ .annotate }

1. And honestly, this is the only way we'll defeat slop and actually succeed with AI.

So ya, AI makes mistakes.
So do you. 
Use the tools we have as an industry to catch and correct them.

## A Fork in the Road

So where does that leave _all_ of us, the software engineers?
The programmers?
The coders?
It leaves us with a choice.
The same choice many before us have had.
Do you rise to the challenge, and learn the new paradigm?
Or do you cling to the past and let yourself slowly become irrelevant?

This isn't me being hyperbolic.
I absolutely believe this.
And if you would have talked to me a year ago and presented me with this argument, I would have said you were full of shit.
That's how _fast_ this space is moving.
That's how _good_ this technology has gotten.
And it's not slowing down.

Here's my predictions on where the space is going, and this is me being conservative with the timelines:

* Within the next 2 years, the majority of code will be written by AI.
* Within the next 5 years, all of it will be.
* **10 years down the road, handwriting code will be viewed the same as calculating derivatives in Calculus class.
    You have to do it by hand to learn the concepts, but once you get into the "real world" you'll never do it that way again(1).**
    { .annotate }

    1. There's so much to be said about how this is going to impact the way we teach, hire, and structure work not only in this industry, but all industries. And that is _waaaay_ too much for this blog.

You may think this is wild.
You may think I'm bat shit crazy.
That's fine.
I've watched some of the most brilliant programmers I know go from skeptics to avid users.
Hell, even Linus Torvalds, creator of Linux and programming wizard, recently admitted in a [PR](https://github.com/torvalds/AudioNoise/commit/93a72563cba609a414297b558cb46ddd3ce9d6b5) that he vibe coded a noise reduction tool and AI wrote the code better than he could.

Sure there will be hold outs.
There will be those companies that say they won't do it.
Some will cite the environment, some will cite security, some will cite ethics(1).
They'll ship features 10000x slower than their competitors.
And we all know how the market will react to that.
{ .annotate }

1. All of which are perfectly valid reasons. But in the end, it won't matter. The road to hell is paved with good intentions.

Sure, some people will still write code by hand, likely as a hobby or for a small side gig.
But people will not be getting paid to be programmers anymore.
They'll be getting paid to be software engineers.
And software engineers won't be writing code. 
They'll be building products and solving problems.

> "Computer science is no more about computers than astronomy is about telescopes." - _Edsger W. Dijkstra_

## "Ok, but if I'm not writing code, then what the _hell_ am I supposed to do?!?"

Ok, if software engineers aren't going to write the code, does that mean we're all out of a job?
Nope.
Not even close.
AI has to be directed.
It has to be given a task.
The more detailed instructions you give it, the better it will perform.
If you give it vague instructions, prepare for the slop.
And what's more important, the user _must be an expert in the field using it_.
This is the part people seem to be missing(1).
Sure someone who has never programmed a day in their life can ask AI to write a toy application to do something, and it may work at first.
But that application is going to be a _nightmare_ to maintain, it'll be riddled with bugs, and it'll never see production.
That's the thing with AI, you only get the speed up if you know what you're doing in the first place.
Because you can **spot the bullshit** when it makes mistakes.
{ .annotate }

1. Or ignoring. Whichever one fits their narrative better.

So software engineering isn't going anywhere, what the job looks like is changing.
Basically every software engineer just got promoted to software architect.
Congrats!
Instead of writing the code, we're going to move into an architecting, planning, orchestration and verification role.
We may need to step in sometimes and write some highly specific code, or tweak a few things here and there that it would be quicker for us to do rather than prompt AI again.
But what will really matter will be the design, the architecture, the integration points, the product vision, essentially the layer above the implementation.
It will be crucial to develop more product sense, and possibly a few other skills along the way.
The days of going heads down, banging out code, and completely ignoring the rest of the org and company are done(1). 
We'll be expected to care about the whole picture(2).
{ .annotate }

1. RIP to the "brilliant asshole" who everyone put up with because they were a wizard programmer but sucked at everything else. That isn't going to fly anymore.
2. Hooray! You get to pay attention to those KPIs, OKRs, RCAs, and all the other three letter acronyms! But don't worry, you have AI to help you.

Don't believe me?
It's already happening.
Meta's product managers are [vibe coding prototypes](https://www.businessinsider.com/meta-vibe-coding-build-prototype-apps-mark-zuckerberg-2025-11) instead of waiting for an engineering team to validate something.
[Claude CoWork](https://support.claude.com/en/articles/13345190-getting-started-with-cowork) (Claude Code Agentic framework, but for your desktop) was [designed and built in 10 days](https://www.linkedin.com/posts/subhedar_we-built-claude-cowork-in-10-days-using-claude-activity-7416998780123680769-fcXh/) using Claude Code.
LinkedIn is piloting replacing product managers with [product builders who do programming, design, and product work](https://www.lennysnewsletter.com/p/why-linkedin-is-replacing-pms).
This is the kind of development that is possible when AI coding is embraced.

Now, this does mean some potentially _weird_ shit is going to happen to the job market.
And to be fair, it's already happening.
Large tech companies are openly saying they're laying people off because they don't need the size of the staff they used to.
If a handful of engineers utilizing AI can match or even outperform the output of a full team, companies are going to act on that.
This constriction will happen for a while.
And it's likely to go too far.
People will have too much confidence in how much they can hand off to AI(1).
Then they'll back off and re-hire.
But that doesn't help you if you wind up on the layoff list.
So the only thing you can do at this point in time is to learn and prepare.
Because it's going to be a _weird_ ride for a bit.
{ .annotate }

1. These people will be the loudest about this, and their failure will be public and humiliating.

## The Path Forward

So, I'm not going to sit here and lie to you and tell you this shift is going to be easy.
Because it's not.
We are experiencing the largest shift that our industry has ever seen.
Skills that you spent years, maybe even a lifetime to learn and master are being trivialized and devalued in real time.
It's a hard pill to swallow(1).
{ .annotate }

1. And if you're struggling with this, know you're not alone. The entire industry is collectively losing its shit right now.

But there is one thing you don't have time to do right now, and that's panic.

Seriously.
Take a breath.
You don't have to learn all of this tomorrow.
You don't have to suddenly be an AI wizard by next month.
This is a marathon, not a sprint.
Everyone who appears to be creating sixteen startups with AI in fourteen seconds started at the exact point you are at now(1).
The people who will succeed and come out of this on the other side aren't the ones who are running around frantically trying to keep up with every new tool, every new release, and reading every _fucking_ blog post that comes out.
They'll pick up a tool, and learn how to make their life better with it.
And when they're ready, they'll pick up another.
{ .annotate }

1. Or is a bullshit grifter, and there are a **lot** of those in this space right now.

That being said, you **do** have to start.
This isn't optional anymore.
This "Oh let's just wait and see what happens" mentality is **over**.
If you're still on the fence, you're being left behind.
There's still time to catch up, but every day you wait, someone else pulls ahead of you.

Maybe you may feel this is unfair(1).
That you've been cheated or somehow screwed over by this.
And you know what, maybe you have.
And it's fine to feel that way.
But that's not what's going to pay the bills. 
So pick yourself up, dust yourself off, and start all over again.
{ .annotate }

1. When I was a little kid, and something wouldn't go my way I would tell my Mom "That's not fair!" and she would reply with "Life's not fair." and honestly, that may have prepared me for life more than anything else ever could. Maybe a little harsh for a four year old, but I turned out alright.

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/20ViFpURIDk?si=N6XGHes9WytdosSs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

I'm not going to claim I have all the answers.
I'm just like you, figuring this shit out as I go along.
I started using Claude Code six months ago, and it has _dramatically_ changed my life.
Not a little.
Not a smidge.
A whole **fucking** lot.

And I'm going to document that for y'all.
You'll find my first (of hopefully many) blogs linked below on what I've learned using Claude Code these last six months for software engineering.
I use it for _so much more_, but I'm going to keep it scoped to programming for now.

So I wish you luck.
Trust me, you're going to love this.
It's going to open up a whole world of possibilities for you.
Just don't delay.
Because at the end of the day, the future belongs to those who show up for it.

---

_Curious about my personal AI journey, how I got started, and all my tips and tricks? Come back tomorrow for the next part of the series._

!!! abstract "Part 2 of 3 of my `Brain Dump Ramblings on AI` blog series"

    Check out the other parts of this series:

    * Part 1 - **[We're Witnessing the Evolution of Software Engineering](014-software-engineering-evolution.md)** discusses the historical context and ongoing evolution of software engineering up to the advent of AI.
    * Part 3 - **[Claude Code as My Daily Driver](016-claude-code.md)** - My journey with Claude Code and my tips and tricks for getting started.
