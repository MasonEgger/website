---
title: "Everything in Its Place: Making Agents Write Correct Temporal Applications"
description: "The tools and habits I've found that lead to stable, production-ready Temporal Applications."
date: 2026-08-07
categories:
    - AI
    - Temporal
tags:
    - AI
    - Temporal
    - Claude Code
authors:
    - masonegger
---

Coding agents are everywhere.
Not a day goes by that I don't talk with a customer, someone in the community, or a random stranger on the street about using AI to write software.
I'm doing it.
I would say almost all of the code that I've "written" in the last 6 months has been done by an agent.
And the vast majority of what I write are Temporal Applications.
Between demos, customer POCs, side projects, and my work with the [PyTexas Foundation](https://pytexas.org), I average three to five net-new Temporal apps a week, using just about every feature Temporal has to offer.
These aren't all toy projects, either.
Sure, some are (looking at you, [Durable Wordle](https://github.com/temporal-community/durable-wordle)), but plenty of them run in production, powering real parts of my life and my community.

So when someone gets on a call and tells me their agent can't write correct Temporal code, I'm usually surprised.
After digging into their agentic coding workflow, I can usually spot the issue almost immediately.
And almost always, they aren't taking advantage of the tools and resources that enable their agent to be successful writing Temporal code.

So, let's set up your workspace so you don't have to fight with your fancy (and expensive) robots about how to properly unit test a Signal.

![Prepped ingredients laid out in bowls and on cutting boards before any cooking starts: diced meat, cheese, herbs, tomatoes, olives, corn, and a bowl of eggs](mise-en-place.jpg)

This is how I ship production-ready Temporal Applications with an agent, week after week.
I use Claude Code, but the vast majority of my advice is not harness-specific, and when a tip is I'll explain the concept rather than the exact tooling.
The same ideas apply to whatever agent you prefer.
It also doesn't much matter what kind of project you're working on, whether it's a fully spec'd greenfield build, a modernization effort introducing Temporal, or a one-line bug fix in an existing Workflow.

Using agents to build Temporal Applications (or in fact, _any_ software project) comes down to three things:
- Give the agent the right context to build with
- Keep it honest with guardrails
- Make sure you and the agent agree on what to build

Here's how I do it.

## Making Agents Good at Temporal

I've been at Temporal long enough to remember when AI was genuinely awful at writing it.
When ChatGPT first landed there wasn't enough Temporal content on the internet to train a model into being useful, so you'd get code that was confident, plausible, and completely wrong.
That has changed, partly because there's more material out there now, but mostly because we've built resources designed specifically to feed an agent the right patterns.
This is the three-part approach I use to give my agents the context they need.
Let's start with the quickest win.

### The Temporal Developer Skill

Start with the [Temporal Developer Skill](https://docs.temporal.io/with-ai#temporal-developer-skill).
This is the foundation of building any Temporal Application with agents.

![A blue enameled pot on a stove with chicken, carrots, celery and onion simmering down into stock](stock-pot.jpg)

A Skill is a curated bundle of instructions and references that the agent decides whether to load based on its task.
This one is maintained by our own engineers and checked for correctness, so the patterns it hands the agent are the ones we'd actually endorse.
We've built out the skill to work with various agentic coding tools ([`Claude Code`](https://docs.temporal.io/with-ai?skill-install=claude-code#temporal-developer-skill), [`Cursor`](https://docs.temporal.io/with-ai?skill-install=cursor#temporal-developer-skill), [`Codex`](https://docs.temporal.io/with-ai?skill-install=codex#temporal-developer-skill), and integration with [`npx skills`](https://docs.temporal.io/with-ai?skill-install=npx#temporal-developer-skill)).
Not using any of those?
No problem, there's [manual](https://docs.temporal.io/with-ai?skill-install=manual#temporal-developer-skill) instructions too.
We also have a [Temporal Cloud Skill](https://docs.temporal.io/with-ai?skill-install=npx#temporal-cloud-skill) that enables your agent to troubleshoot Temporal Cloud issues.

One caveat I want to add here, and this goes for _all_ skills, not just the Temporal one.
I **always** manually invoke my skills at the beginning of a session.
Why take the gamble that the LLM didn't decide to invoke the Skill and waste time and tokens?
I'd rather spend the extra thirty seconds it takes to type `/temporal:temporal-developer` than fire off a task only to find out later it didn't invoke and now I have to either run a cleanup pass or back everything out and try again.

You should use these.
Every _single_ time.
We've had multiple customers tell us it substantially reduced their development time and detected incorrect designs in their existing code.

Use it for building new as well as reviewing existing code.
You'll be surprised at what it will find.

### SDK Samples Repositories

The Skill is the first component, but for even more flavor you should add the Temporal SDK Samples repositories as context for your agent.

![Guy Fieri going yeah](https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExejk5MGU5NGc5dmczcm11eWNvd25uYm54NXZ5dWJjOTR4M2Y5MW5iNyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/KCSmvxwklRKucHJyxP/giphy.gif)

Every official Temporal SDK has an official samples repository for that particular programming language, and they even have a standardized naming scheme.
Each one is a collection of working implementations covering Temporal's features, written by the SDK teams, with explanations of when to use each pattern.
For Python it's [`samples-python`](https://github.com/temporalio/samples-python), for Go [`samples-go`](https://github.com/temporalio/samples-go), for TypeScript [`samples-typescript`](https://github.com/temporalio/samples-typescript) and so on.
(Rust is the exception; `samples-rust` is just a pointer to the examples that live inside the [Rust SDK repo](https://github.com/temporalio/sdk-rust/tree/main/crates/sdk/examples).)

Think of these repositories as recipes.
The idea of a "programming cookbook" has been around for a long time.
I remember finding the answer to a tricky decorator question in the Python Cookbook very early in my career.

![A hand holding a copy of the Commodore 64 Subroutine Cookbook by David D. Busch](commodore-cookbook.jpg)

So I recommend adding them to your agent's workspace and telling it to reference them.
For Claude Code, I bring them into the session with `/add-dir`.
Before `/add-dir` was a command in Claude Code I used to just clone the repository into my workspace and tell my agent about it.
And that is an **important** part.
Don't just add it and hope the LLM finds it.
Tell it explicitly:

```
In the samples-python directory exist curated snippets of Temporal code highlighting best patterns and features written by Temporal experts. Reference these when planning or implementing any Temporal application code.
```

Now you may ask, "Why use both, when the skill already exists?"
And that's a valid question.

First, it's important to understand what the skill is and does.
The Skill aims to be a condensed version of Temporal knowledge, containing information about features and best practices.
But the samples repo is like the cookbook recipe, it's very specific instructions for very specific use cases.
The code within the repo is also fully executable, verified, and tested.

So they complement each other, they don't compete.
Even if there is duplicate information between them, that just reinforces the concept within the model that what it inferred from them is the correct pattern.
The more high-quality, curated context you give the agent, the better the output, and the samples are some of the highest-quality context we have.

### Temporal Knowledge Base MCP

So now you have all the ingredients and the recipes, but that doesn't immediately make you a good cook.
Sometimes you need an expert.

![Gordon Ramsay in a white chef's jacket, arms crossed, staring down the camera against a red backdrop](gordon-ramsay.jpg)

This resource provides exactly that, and it's the [Temporal Knowledge Base MCP server](https://docs.temporal.io/with-ai#temporal-knowledge-base--mcp-server).
You may have used it before, as it's what powers the **Ask AI** button at the top right-hand corner of the Temporal Docs, or the `#ask-ai` channel in our [Community Slack](https://t.mp/slack).
I know, most engineers reflexively ignore those buttons because they're usually useless.
But I promise you, this one isn't.

Behind it is the most complete knowledge base of Temporal that I've seen.
It's immensely better at giving deep Temporal answers than even the best foundation models.
It's a RAG over everything we know about the product: the docs, the courses, the community forums, and curated answers from our engineers and support teams in the community Slack.
It's the canonical source, and most importantly _it cites itself_.
Every answer comes back with a link to where in the knowledge base it found it, and your agent can go read that source if it chooses.
And here's the kicker, if it can't find an answer **it tells you.**
It doesn't hallucinate some bullshit response, it flat tells you "the knowledge sources do not contain any information about" whatever you asked, and then points you at what it does have.

So connect it as an MCP server and your agent can query it directly.
I used to not do this, and only use the first two suggestions.
The results were fine but bugs, poor architectures, and misuse of features still happened.
Once I started using the MCP I noticed a substantial increase in the quality of the architectural decisions that my agents were coming to.

I recommend leaning on this hardest during design.
When the agent is unsure about a pattern, or makes an assumption I can't confirm, I tell it to validate against the knowledge base before it writes a line.
Preventing improper architecture from the start is way easier than trying to refactor it later.
That one habit prevents a whole class of subtle mistakes that would otherwise surface much later, when they're far more expensive to fix.

These three elements, the Skill, Samples, and MCP, should make up the foundation of any agent that writes Temporal Application code.
This will give it all the context it could ever eat.
But context is only part of the story.

## Making Sure Sh*t Doesn't Catch Fire

You've probably experienced what happens when an agent goes rogue.
You walked away, took a coffee break, and came back to something you don't recognize.

![Seymour Skinner entering his kitchen and finding his ham on fire](kitchen-fire.gif)

Context provides your agent the information it needs to make an informed decision.
However, it does not provide your agent boundaries.
Sure, you can have a Skill that contains information about how to test a Workflow.
Nothing in that Skill makes the agent write the test, run it, or care when it fails.
That part is on you.

Agents love structure and devour outputs from deterministic tooling.

![Cookie monster eating infinite cookies](https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExZmtzdXZldTgxd2swOWg2eTAzeTZwZ2M2bjQzbjZuYW95MTc1bGp4MyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/JrH3p5ZyUHEV6iyvR4/giphy.gif)

Every tool you hand an agent to check its own work lowers the odds it quietly drifts off course.
For Temporal Applications, I lean on three of them.
Tests, static analysis, and the Temporal CLI.

### Tests First, and I Mean First

Testing comes first.
I never liked Test Driven Development when I was manually writing code.
But for agents, I put that shit on everything.

![An older woman leaning in with total conviction, captioned "I put that shit on everything!"](red-hot.gif)

The agent writes the tests first, then writes the implementation, then iterates until everything passes.
That order forces it to reason about failure cases and edge conditions _before_ it locks into an approach.
It also raises the alarm when a rogue agent introduces a breaking change.

Temporal makes it especially effective, because the SDKs ship with [testing frameworks](https://docs.temporal.io/evaluate/development-production-features/testing-suite) built for exactly this.
These are packaged directly into the Temporal SDKs and integrate with the usual test runner for your language.

So what kind of things should you test with Temporal?
Test your Activities in isolation to make sure the building blocks of your Workflow do what you expect _before_ they are wired into a Workflow.
Mock your Activities so you can test the logic flow of your Workflow.
Make sure your Workflows are processing Signals properly.
Run an integration test by executing the full Workflow and Activities.
And the big one, **use [replay testing](https://docs.temporal.io/develop/safe-deployments#use-replay-testing-before-and-during-your-deployments)** to help find non-determinism errors before they blow up your production environment.
All of the tools are there, so there's no excuse for your agent to mess this up.
Unless you aren't testing your code, and at that point, that's on you.

Of all of the practices I use, this one saves me more than everything else combined.
But that is far from the whole story.

### Linting, Type Checking, and Whatever Else

While TDD is great, it catches issues at execution time.
If only we had a device that could alert us of issues before they happened...

![A ceiling smoke detector with a face, mouth moving, captioned "Can't do that!"](cant-do-that.gif)

Linters, formatters, and type checkers act as the smoke alarm for your code.
They are cheap to run and catch a surprising amount before the code ever executes.
They catch the moment the agent decides a function that should take a string now takes a 1996 Toyota Corolla.

Before agents, I was _very_ anti type-hints in Python.
They seemed clunky, I was used to the old way, and if I wanted a typed language I would just use one.
Now, every single line of my Python code has type hints.
And I enforce this by making my agents pass `mypy --strict`.
If it doesn't pass, it's brittle code that will cause me issues later, and I make the agent fix it.

So whatever quality tooling your language and project already have, wire it into the loop and make the agent run it on _every_ pass.
It costs you a few seconds.
It saves you a hell of a lot more.

### Agents Are Good with CLIs

As many have come to realize in the past few months, agents are _great_ at using CLIs.
Probably because it's a tool where the documentation is (usually) built into the application and the agent can easily deduce how to use it.

![Bender slicing a cucumber with perfect precision, then carrying right on through his own arm](bender-cutting.gif)

So use this to your advantage!
Have your agent run and debug your Temporal Workflows.

Give your agent shell access and it can spin up a local server with `temporal server start-dev`, kick off the Workflow it just wrote with `temporal workflow start`, and then inspect the run instead of assuming success.
That closes the loop.
Instead of trusting that code which compiles also behaves, the agent runs against a real server and checks itself against the Event History.
This is also _great_ for debugging, because Temporal has a single source of truth for what actually happened called the Event History.
When it finds a discrepancy, it fixes it and runs again.
All of this assumes you pointed the agent at the right problem in the first place, which is a discipline of its own.

## Measure Twice, Cut Once

![Homer Simpson saying "Steady" over and over as he tries to hammer in a nail, then the hammer pokes him in the eye](steady.gif)

I'm a big fan of Spec Driven Development.
I spend 95% of my time now perfecting my spec and plan.
I have Claude interview me and ask me every question it possibly can about the design of the application, as well as the infrastructure that's going to run it.

For a Temporal Application, that interview has a shape.
What belongs in the Workflow and what has to be an Activity?
Nexus or Child Workflow?
Signal or Update?
Am I going to hit the limits of the Event History?
How long does this run and do I need Continue-As-New?
The list goes on and on.
But what happens if it asks a question that you don't know the answer to or have an opinion on?
Then _ask it to go deeper_.
I think this is the part that people often forget about.
Don't understand something?
Ask it to explain it!
Ask it what its recommendation is and to give you the pros and cons.
Eventually, this will stir up something to where you and the agent can get on the same page and you can come to an informed decision.

It is not uncommon for me to spend days at a time perfecting these specifications.
You may think that this is excessive, but honestly, it's the most productive way I've found working with AI.
Because by the time I'm done, I don't really worry about what my agents are going to produce.
Why?
Because they produce what I ask of them.
Every time.
And when they don't, that's on me.

That being said, not every single thing needs a full specification.
I will use single line prompts to fix small bugs or add small embellishments or features.
But what is important is that I keep that specification file up-to-date.
If we add something new, then it gets added.
Scale the planning to the size of the change.

And this leads me to a piece of advice that the person who got me into Claude Code gave me at the very beginning of my journey.
Your agent doesn't get tired (your wallet might, but the software doesn't).
Your agent doesn't judge you.
Your agent is there to provide you the answers to the questions you ask.

I needed to hear that.
Early on, when the agent asked me something I didn't know the answer to, I'd feel embarrassed.
That is a waste of time and a waste of opportunity.
So I stopped.
I put my ego aside and let myself be a beginner again.
And I've learned so much by doing it.

## The Call Is Coming From Inside the House

You can't open an empty repository, type "build me Facebook," walk away, and expect something you'd put in production.
It's the same as walking into a room of engineers and doing exactly that.
It was never going to work either time.
The agent can do damn near anything you ask it to.
It failed because **you** didn't give it the context or the guardrails it needed to be successful.

When the agent makes a mistake, don't berate it or just tell it that it was wrong.

![Abe Simpson in a newspaper clipping headlined Old Man Yells At Cloud, with the Claude logo pasted over the cloud](old-man-yells-at-claude.png)

Ask it `Did you follow the specification we agreed on for this?`
And its response will reveal one of two things you got wrong.
You either didn't give it enough context so it could make an informed decision, or you didn't provide enough guardrails to prevent it from deviating.

But stop!
Your first instinct will be to just fix it (You're an engineer, it's what you do).
But this is where people act too fast and miss out on a real learning opportunity.
Instead of just correcting it, ask your agent `What did I not provide that led you to come to this conclusion, and what can I provide next time to ensure you don't make this mistake again?`
And from there, you should ask your agent to codify the learnings from this.
Whether it's the project memory, a CLAUDE.md/AGENTS.md, a custom Skill you wrote, or a stone tablet you carve it into, it doesn't matter.
Just **record this finding**.
This is what I do.
Every project feeds back to my personal set of Skills, continually improving them.
The more projects I build, the better my Skills get.
The better my Skills get, the faster I can build.
The faster I can build, the more projects I can build.
And the wheel just keeps turning, gaining momentum.
Too many people sit down and just hope the magic box works.
It doesn't.
You have to invest in it.
I've been doing this for over a year now, and I'm still iterating.

## You Still Have to Know Which Button to Push

There's an old parable in the consultant world about a client who calls in an expert to fix a machine.
The expert studies it for a minute, pushes a single button, and the machine roars back to life.
Then he turns to the client and says "That'll be $500."
"$500!" the client exclaims. "You were here five minutes and you pressed one button!"
The consultant looks him in the eye and says "You don't pay me to push the button, you pay me to know which button to push."

AI can push a lot of buttons really fast.
It's still your job to know which ones.

All of this is ordinary good engineering practice, paired with giving the agent the information it actually needs.

Which is the same thing that makes a room full of people productive.
A good engineering org has a clear process, real onboarding, a knowledge base, and references its people can trust.
An agent needs the exact same things.
The Skill, the samples, and the knowledge base are its onboarding.
The tests and the type checks are its code review, and the CLI is the part where somebody actually runs the thing before it ships.
The plan is its design doc.
None of this is new.
We've just got a new kind of engineer to bring up to speed.

Do that, pair it with your own standards and preferences, and you'll get Temporal code that works the way you want, looks like something you would have written, and that you can actually maintain.
You'll also stop arguing with your expensive robot about how to unit test a Signal.
And when somebody asks who wrote it, you get to say the honest thing.
I engineered it.
Claude did the implementation.

![The interior of Bag End, a round doorway framing a hobbit kitchen with food laid out on the table and a fire in the hearth](bag-end.jpg)

_(If you're curious about how I do things, check out my [other blog series](https://mason.dev/blog/category/brain-dump-ramblings-on-ai-series/) or my [public Claude Code plugin](https://github.com/MasonEgger/bpe-claude-code-plugin).)_
