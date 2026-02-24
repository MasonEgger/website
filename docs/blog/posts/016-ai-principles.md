---
title: "What I Found Actually Works with AI"
description: "After playing with enough models, agents, etc. here are the core foundations I've adopted when using these tools."
date: 2026-02-23
categories:
    - Software Engineering 
    - AI
    - Productivity
    - Brain Dump Ramblings on AI Series
tags:
    - LLMs
authors:
    - masonegger
---

Tools change.
Models improve. 
Features ship faster than you can even imagine. 
But after months of experimenting with different AI tools and workflows, I noticed certain patterns kept appearing. 
Strategies and principles that yielded good results regardless of which shiny new thing I was using. 
And I found myself coming back to them time and time again.


<!-- more -->

## Cutting Through The Noise

It's easy to get sucked into the AI vortex.
You type in a question or give it a task and sit back and watch it cook.
Want a recipe for gluten free brownies?
It's got you.
Need help reviewing large complex legal documents?
No sweat.
Want it to build your entire business and manage it for you?
Believe it or not, that's happening **today**.
It's hard to look at this and not be in awe.
It feels like magic(1).
{ .annotate }

1. And let's be honest, it fucking is. We took sand, hit it with the full force of Zeus, and it gives us _reasoned thought_. We cracked the Philosopher's Stone y'all. This is the closest thing to magic we have.

So now we hold this _unbelievably_ powerful tool that contains the entire library of human knowledge and understanding, and we have to figure out what to do with it.
Should we build a company?
Find the cure to cancer?
Bring about world peace?
All of these boil down to a common theme.

**Get shit done**.

That's it.
That's the goal.
AI exists to help you deliver.
Ship the feature.
Fix the bug.
Write the docs.
Build the product.
Whatever "done" looks like for you, AI is a tool to get you there faster.
Some things distract us, some things unlock our ability to **get shit done** faster.

And like all great high fantasy magic systems, there are rules that must be followed to achieve immense power!
Here are the do's and don'ts of using AI that guide everything I do.

???+ info "This Blog's Intention"

    This blog is deliberately provider and model agnostic.
    These do's and don'ts apply to generative AI as a whole, not one specific provider.
    If you're looking for exact implementation details, check out the [next blog in this series](017-claude-code.md)

## Principles That Accelerate

### Principle \#1 - This is MY Code, Not AI Code

I often hear people blame AI generated code for things.
"AI put a security vulnerability in my code."
"AI submitted a trash pull request."
"This function is shit because AI wrote it."
And while I get the desire to shift blame onto an inanimate object that can't defend itself(1), this leads us down a dangerous road.
{ .annotate }

1. Or just sycophantically apologize.

There is no "AI Code" vs. "Human Code".
There is just Human code(1).
While AI may have _generated_ the code, at some point a human was involved to provoke it.
Opus 4.6 didn't wake up one morning, yawn, stretch, and say "I'm going to rewrite the entire universe in Rust!".
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
You are responsible for it(1).
Doesn't matter who or what wrote it, it's yours.
Own it.
{ .annotate }

1. Back to the $500 button from [Part 2: Code is Cheap, Don't Devalue Yourself](015-code-is-cheap.md). Your value isn't in pushing the button, it's in knowing which damn button to push! AI can push a lot of buttons really fast, but it is your job to know which ones.

But what happens if you **don't** do this?
You start to rack up a cognitive debt.
The more you let AI just cook without you reviewing or intervening, the less you will understand about the project.
Why does this matter?
Because if you can't reason about the mental model of your code, you will struggle to figure out where to take the project next, as Simon Willison recently wrote about on his [blog](https://simonwillison.net/2026/Feb/15/cognitive-debt/).

It's for this reason that I _always_ review any code that AI produces.
**If I don't understand it, it doesn't get committed.**
It's my name.
We often forget that **software has consequences**.
My colleagues trust that I produce good work.
My open source communities trust that I don't provide them with buggy or worse vulnerable code.
In this quickly accelerating world of AI generated code, don't tarnish your reputation because you're being lazy.

### Principle \#2 - Rules for Thee, Not for Me

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
So I make my LLM do **Test Driven Development**. 
I do(1).
Have AI write the tests first, _then_ write the implementation.
This works _remarkably_ well as it causes the agent to predict failure cases and "think" more about the different code paths.
My success rate when I switched to doing this doubled.
It seemed like I couldn't miss when writing code.
Adding new features was simple because if the LLM rewrote something it shouldn't, the breakage was immediately apparent.
**AND** my code was well tested and maintained. 
{ .annotate }

1. You can see it in my [global `CLAUDE.md` file](https://github.com/MasonEgger/homedir/blob/main/.claude/CLAUDE.md?plain=1#L13).

Want to take it a step further?
Check for coverage.
Have the LLM aim for 100% test coverage of your code.
You do have to keep an eye on this though, because sometimes AI likes to take initiative.
And by that it will test **everything** when not everything needs to be tested.
Like checking to see if an import from the standard library can be resolved.
I've had to tweak my sessions to have AI only test the _logic_ of my application and not if a library can be imported. 
So while it can be a little excessive, I'd rather have it and not need it than need it and not have it.

Still not satisfied?
Add some linters!
Mandate proper formatting!
Are you writing in Python?
Use type hints!
Y'all know Python is my favorite language.
I love the freedom and flexibility it gives me, but that comes with a cost.
One of those costs is Python's typing.
I think this function that I wrote takes a string, but the AI came through on a pass and messed it up, and now expects a 1998 Toyota Corolla.
So use a type checker to make sure that what you expect is what is _actually_ happening.

So lint the fuck out of your project.
What's the worst that can happen?
You waste a few seconds?
Seems like a fair trade to me.

### Principle \#3 - ~~Cattle~~ Context, not Pets

Next let's talk about context management.
How AI manages context is one of the primary discussion points around improving AI performance and the tooling gets better every day.
Mishandling of context leads to the "dreaded context rot"(1), where the performance of AI degrades the longer you interact within a certain session.
Essentially, the longer you chat with an AI, the worse the performance gets, so we have to develop strategies for handling this.
{ .annotate }

1. If this is not the name of the company death metal band from Anthropic I'm going to be sad.

Now the way I handle context is similar to an SRE adage "Cattle, not Pets".
This practice dictates building of systems that can be easily replaced instead of babying a dedicated server.
So you treat the server or container like livestock for slaughter, and if it goes down you kill it and start a new one.
My context managing philosophy is the same.

I use one session per task.
I review the code, and ensure functionality was achieved.
I update relevant context files like the local configuration files(1).
I create a summary of the session and store it in the repo.
I commit the code to GitHub.
Then I use `/clear` to clear the entire context window, and start with the next task.
{ .annotate }

1. For example, a project level `CLAUDE.md`.

Every task is a new beginning.
A new chance to get it right or fuck it all up.
And whether it's successful or not will depend if I properly maintained the history and roadmap **external to the agent**.
This is the true crux of it.
While different tools have gotten a **lot** better at maintaining context, it wasn't always that way.
And regressions can happen.
Like most backend engineers, I reserve the right to fire my tools at any point.
While I'm loving Claude Code now, that doesn't mean I wont eventually try out Codex.
If my history is locked in a tool, I'm locked in as well.

So I don't baby my context window.
I just nuke it after every task and start over.
My context window is the cattle(1), not a pet. 
This accomplishes two things.
It maintains that minty freshness of the models at the beginning of a session we all love so much, and it requires me to be _very deliberate_ about how I manage context in my projects.
This, in-turn, leads to better performance _regardless_ if the compaction gets better.
I'm no longer dependent on the tool or the model.
I control the context window.
{ .annotate }

1. Should be cow, cattle is plural. But I had to make that metaphor work.

### Principle \#4 - Prompts are Code, and Should Be Documented as Such

No surprise, if you're familiar with my work, that I think shit should be documented and documented well.
I chose to die on this hill years ago.
I have my burial plot picked out(1).
{ .annotate }

1. It's nice. Under an oak tree. And my headstone will read "Use the oxford comma you fools".

Let's dive a little deeper into what a prompt is.
Prompts are text you provide to the AI to achieve a task.
They have inputs, outputs, and side effects.
They can be buggy, inefficient, or elegant.
A bad prompt produces slop, while a good prompt produces working, maintainable code.
Sound familiar?
That's because prompts **are the code now.**
It's the new abstraction layer we're all learning to speak.
Good prompts should be versioned, reviewed, and iterated on just like everything else.
Why do you think I like my custom commands so much? 
When I tweak a Command and it improves, I update it and commit it.

??? abstract "Example Session Summary from One of My Projects"

    ```md
    # Session Summary: YouTube Embed & Toolchain Improvements

    **Date:** 2026-02-22
    **Duration:** ~12 minutes
    **Conversation Turns:** 6 (user messages)
    **Model:** Claude Opus 4.6
    **Total Cost:** ~$3.50 (estimated)

    ## Key Actions

    ### 1. Step 6: YouTube Embed (Completed)
    - **RED**: Created `tests/test_youtube.py` with 10 tests across 3 classes:
    - `TestYouTubeBasic` (2 tests): iframe attributes, default 16/9 aspect ratio
    - `TestYouTubeDimensions` (5 tests): custom height+width, height-only, aspect ratio for default/square/custom dims
    - `TestYouTubeEdgeCases` (3 tests): not matched in paragraph, not matched in fence, URL encoding
    - All 10 tests confirmed failing (RED validated)
    - **GREEN**: Created two new source files:
    - `src/do_markdown/_util.py`: `reduce_fraction()` using `math.gcd`
    - `src/do_markdown/youtube.py`: `YouTubePreprocessor` (priority 20) + `YouTubeExtension`
    - All 10 tests passed on first implementation — zero debugging
    - Fixed one ruff lint issue (unused `pytest` import)

    ### 2. Coverage Analysis & Gap Fix
    - User asked about test coverage — ran `pytest-cov` (initially as ephemeral dep)
    - **Result**: 99% coverage, 3 missing lines in `fence.py:111-113` (non-fence line path in preprocessor)
    - Added `test_text_surrounding_fence_preserved` to `TestNoDirectives` class
    - **Result**: 100% coverage across all 240 statements, 0 missing

    ### 3. Toolchain Restructuring
    - Added `pytest-cov>=7.0` to dev dependencies in `pyproject.toml`
    - Restructured justfile commands:
    - `just test` — pytest with `--cov=do_markdown --cov-report=term-missing`
    - `just lint` — ruff check + ruff format --check
    - `just typecheck` — mypy --strict
    - `just check` — composes `test lint typecheck` as just dependencies (not reimplemented)
    - User corrected initial approach where `just check` manually listed all commands — pointed out it should just compose the other targets
    - Updated `CLAUDE.md` and `MEMORY.md` to reflect new command structure

    ## Main Prompts & Commands

    | # | User Prompt | Action Taken |
    |---|------------|--------------|
    | 1 | `/app-dev:execute-plan` | Read context, implemented Step 6 (YouTube embed) via TDD |
    | 2 | `/meta:session-summary` | Created initial session summary |
    | 3 | `/git:commit-msg` | Wrote commit message to commit-msg.md |
    | 4 | "What is the test coverage?" | Ran pytest-cov, identified 3 uncovered lines in fence.py |
    | 5 | "Add coverage for the test case" | Added test, achieved 100% coverage |
    | 6 | "Add coverage to dev packages..." | Added pytest-cov dep, restructured justfile, updated CLAUDE.md |
    | 7 | User correction: "just check should just run test lint typecheck" | Simplified justfile to use just dependency composition |
    | 8 | `/meta:session-summary` | Created this session summary |

    ## Efficiency Insights

    - **Excellent:** YouTube embed implemented in one pass — 10/10 tests passed on first GREEN implementation
    - **Excellent:** Coverage gap identified and fixed with a single targeted test
    - **Good:** Initial justfile restructuring was over-engineered (duplicated commands in `check`). User caught this and the fix was clean — `check: test lint typecheck` using just's dependency system
    - **Good:** Also split `lint` to include both ruff check and format check (previously these were separate in the old `check` command)

    ## Process Improvements

    1. **Use just dependency composition**: When creating aggregate commands, use `target: dep1 dep2 dep3` syntax instead of repeating the underlying commands. This keeps things DRY and ensures the aggregate always matches the individual commands.
    2. **Add coverage from the start**: pytest-cov should have been in the initial scaffolding (Step 1). Having coverage visibility earlier would have caught the fence.py gap sooner.
    3. **Coverage as part of `just test`**: By embedding `--cov` flags in the default test command, coverage is always visible without extra effort.

    ## Current Project State

    - **Steps 1-6:** Complete
    - **Next:** Step 7 — CodePen Embed
    - **Files created this session:**
    - `src/do_markdown/_util.py` (reduce_fraction utility)
    - `src/do_markdown/youtube.py` (YouTubePreprocessor + YouTubeExtension)
    - `tests/test_youtube.py` (10 tests across 3 classes)
    - `.ai-sessions/session-20260222-1113-youtube-embed.md` (mid-session summary)
    - **Files modified this session:**
    - `pyproject.toml` (added pytest-cov dep)
    - `justfile` (restructured all commands, added coverage, composed check)
    - `CLAUDE.md` (updated command documentation)
    - `tests/test_fence.py` (added 1 coverage test — 39 total fence tests)
    - `plan.md` (Step 6 → Done)
    - `todo.md` (items 6.1–6.6 checked)
    - **Full verification (`just check`):** All passing — 60 tests, 100% coverage, clean lint, clean types

    ## Observations

    - The YouTube extension is the simplest extension so far — no postprocessor needed, just line-by-line replacement in a preprocessor. This validates the architecture decision to keep embeds as simple preprocessors.
    - 100% statement coverage across all 240 statements. The only gap was a non-fence-line path that was trivially covered by adding surrounding text to an existing test.
    - The justfile restructuring is a nice quality-of-life improvement. Individual commands (`test`, `lint`, `typecheck`) are independently useful, and `check` composes them cleanly.
    ```

So documenting prompts, I believe, is just as important as documenting the code.
Why?
Because documenting your code is something you do for the user.
Historically, however, we've been **REALLY BAD** about documenting stuff for the implementer.
And documenting your prompts does this.
It captures the history of the project.
How often do you look at a legacy codebase and just go "WHY?!?!"

![Sheldon cooper reading a paper and yelling WHY gif](img/016-ai-principles/why.gif)

Well now, if the implementation is being done via agents, we have a much better way of at least stitching together the conversations that were being had and why things are the way they are.
But this does beg the question, how _does_ one document prompts?

Every tool has some way of exporting sessions, but I don't think that's enough.
I take it one step further and actually have a template for this that I have AI use to create a similar report after every session.
This template contains a recap of key actions, the main prompts and commands, cost, efficiency insights, possible process improvements, and any other interesting observations or highlights.
I then store these sessions in `.ai-sessions/` in the code repository and commit them.
Now I have a history.
I can use AI to look over them and generate some lessons learned and update its memory and context.

## Anti-patterns That Will Slow You Down

Ok, so I've listed all the things you _should_ do, but what about some things you **shouldn't** do?
These are the things that I am bored with, tired of, and pissed at.

### Anti-pattern \#1 - One Shots

This bugs the hell out of me.
People try giving an LLM the prompt "build facebok"(1) and then getting upset it didn't get it right on the first try.
Really?
Is that how _you_ develop?
With no spec, no plan, and you get 20 minutes typing as fast as you can?
No you don't.
So stop expecting AI to do the same.
Yes, it can get _very_ far without aid.
But in my opinion this isn't a good thing.
The further ahead it gets of you, the less you understand about the project.
So ya, stop with the one shots.
It's dumb.
{ .annotate }

1. Intentional misspelling to demonstrate the level of ignorance it takes to type this into an LLM.

### Anti-pattern \#2 - Model of the Month

I chose Claude a while back because I appreciate Anthropic's mission statement.
I never really gave other models a chance, and I don't really care to.
Why?
Because the differences between the flagship models of the large AI companies are never _really_ that big.
And if there is a gulf, it won't be there long. 
I view this as a Formula 1 race.
Everyone's going really fast, all going for first, and who's in lead changes constantly.
Today Anthropic is in the lead by an inch.
Tomorrow it'll be OpenAI.
Then Google.
Then Anthropic pulls ahead again.
And to spend what limited capacity my brain has to focus on this is pointless.
If Anthropic isn't the best in the world I'm fine with that. 
I'll wait a few weeks until it is again.

### Anti-pattern \#3 - Feature of the Month

This is a big one.
I shout this from the rooftops in the communities I'm in.
These AI companies are using AI to build AI.
That means they are shipping features at a velocity we've never seen before.
Honestly, I think this leads to "feature fatigue".
This is where you just get exhausted from constantly having to try to keep up with what's going on ON TOP OF your other responsibilities.
This happens to me all the time.
I see a new feature and I'm like, I can't wait to try that when I have some free time in a few days!
And by the time those few days pass, there's a new feature.
So I try to keep up.
But then what if I take a vacation and am gone for a few weeks?
Shit there's like 8 new features when I get back!
This actually happened to me, and it made kinda step back from AI for a while.
I only stepped forward again when I built myself the following framework.

1. I will focus on MVW - Minimum Viable Workflow
2. I will only use new tools when I actually have a _need_ for them
3. I will ignore most of the announcements, or at least spend no more than 20 minutes on them until I'm ready for them

Are there a shit ton of _awesome_ features I want to try right now?
Ya!
Am I going to?
Nope!
Not until I need them. 
Maybe I'll set aside some time to catch up eventually.
But product adoption happens on my timeline, not Anthropic's.

Do I feel left out on this?
Honestly, no.
Because for all these features, I am still producing at the rate I want, and I never see anyone gain any real serious ground by adopting them.
I have a friend who just prompts away in a CLI interface, and his output and quality are vastly superior to mine.
At the end of the day, a Stradivarius in the hands of a beginner is just a piece of wood.

### Anti-pattern \#4 - Worrying About What Others Are Doing

If you spend any amount of time on a social media platform where developers congregate you'll see a _metric fuck tonne_ of posts about how everyone is using AI.
This person used it to port their entire code base JS to Rust!
Another person used it to build a side business that's now generating passive income!
This person over here learned the Elder Prompt and has ascended into the singularity!
And if you refresh the page there's **100,000,000** more people saying the exact same thing a slightly different way!

It's exhausting.
And it's easy to let yourself feel like you're behind the 8 ball on this one.
Trust me, you're not.
More than half those people online are full of shit.

```
Person 1: "I spent all weekend optimizing my Claude Code setup!"

Person 2: "Oh cool! What did you build?"

Person 1: "I now have a custom command that reads all my commands and optimizes them and writes them out as a Skill!

Person 2: "That's awesome! How will that help you build?"

Person 1: "Well next I'm going to optimize..."
```

And the cycle just continues(1).
So my best advice is to not let yourself get distracted by everyone else.
The reality of life is there will always be someone better than you.
As soon as I feel good about my AI setup and output, I read a blog that makes me feel like a beginner again.
And that's a **good thing**!
Because there is always something new to learn.
{ .annotate }

1. And if you're looking at my blogs going "Hey wait aren't you doing the same thing?" No. Totally not. Hush. 

So don't let FOMO, or Fear of Missing Out, distract you on your journey. 
Don't let others who are further on their journey discourage you.
It's a marathon, not a sprint.
And the race is just getting started.

## A Method to My Madness

You may be wondering(1) why I'm focusing on things like this and not just jumping right into the implementation. 
Developers are notorious for their "just show me the code" mentality. 
And ya, I could have done that.
But then you might miss the ramifications of what is happening. 
AI isn't another library.
It isn't a new framework or programming language or whatever the hell else you want to compare it to in our industry.
It's a **fundamental shift** in how we work. 
{ .annotate }

1. Especially if you've read this entire series.

A standard Computer Science curriculum has at least one course on Data Structures and Algorithms.
In this course you learn how various algorithms are built, the core data structures in programming languages, performance analysis (Big O) and more.
However, in your career it is _highly unlikely_ you'll ever implement a merge sort by hand.
So why do we take the time to learn this?

Because we want to gain an understanding of how the system works.
Through this understanding, we learn how to properly implement solid solutions.
Sure you don't _need_ to learn this content.
There are successful developers out there right now who never did.
But those developers are likely missing(1) a key part of the mental model.
This is the key differentiator between a craft and a discipline(2).
The carpenter knows how to build the house, but the architect understands _why_ it has to be his way and dismissed other solutions that weren't appropriate. 
{ .annotate }

1. Unless they learned about it after, either formally or through experience. 
2. Check out [Blog 1: We're Witnessing the Evolution of Software Engineering](014-software-engineering-evolution.md) for more details.

I fear that those who say "just show me the code" with regards to using AI in this era are setting themselves up for failure down the road.
It's not just enough to know the magic incantation to chant to the LLM.
You have to understand why that incantation needs to be said.
Otherwise who knows what Eldritch Terror you'll unleash.

<iframe width="560" height="315" src="https://www.youtube.com/embed/qwTop2qs1tE?si=Fo0Pc0x_BaMey_Q5" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

_[Video link](https://www.youtube.com/watch?v=qwTop2qs1tE)_

---

_Ready to see these principles in action? Check out the next part of this series [How I Actually Use the Damn Thing](017-claude-code.md)._

!!! abstract "Part 3 of 5 of my `Brain Dump Ramblings on AI` blog series"

    Check out the other parts of this series:

    * Part 1 - **[We're Witnessing the Evolution of Software Engineering](014-software-engineering-evolution.md)** discusses the historical context and ongoing evolution of software engineering up to the advent of AI.
    * Part 2 - **[Code is Cheap, Don't Devalue Yourself](015-code-is-cheap.md)** discusses AI and it's impact on the software engineering discipline.
    * Part 4 - **[How I Actually Use the Damn Thing](017-claude-code.md)** - My journey with Claude Code and my tips and tricks for getting started.
    * Part 5 - **Skills, Plugins, and MCP Oh My!** - A deep dive into Claude Code's customization features. *Coming Soon*



