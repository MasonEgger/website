# Building AI Apps with Temporal: A Rant

[00:00:00] Okay.

So this, uh, is gonna be an experiment I'm gonna do where I'm going to try to write a blog by just ranting about it into a microphone and seeing what happens. So the blog that I wanna write is how I build AI applications with Temporal, and this is going to kind of be a journey of my

blogs, which we can pull a lot of data from my original website blogs where I talk about this in my AI series period. But this is going to definitely lean heavily on the specific Temporal bit, and this is for the Temporal blog, so we're gonna go with that. So how do I build AI applications with Temporal?

Well, there's Basically, let's say two things [00:01:00] you have to consider whenever you're building AI applications. There are two things you need to master, really. I don't want to say master, but there's, there's two aspects to this. There is the proper build process with AI applications and how to build a proper-- any application, not just a temporal application, but an application with agentic coding, and how to build a temporal application.

So let's start with the how to build a proper application. So I'm personally a big fan of spec-driven deployment. Um, sorry, spec-driven development. This is basically the way to do it. So essentially, the thing that I do is... Or the reason why non-spec-driven development is bad is because basically, you can't just point AI at an empty repository and go, "Make Facebook, please," and expect the damn thing to work.

Like, that's just not gonna work. So what you have to do is essentially[00:02:00] 

You have to plan out what you're going to do. So there's a lot of skills and things on the internet right now called Grill Me, but I originally had one that was basically just a brainstorm, and it played twenty questions with me. I told it what I wanted to build, and then it just continually asked questions until we got where I needed to be with it.

So if I would say I want to build this application, then it would

Ask me what programming language do you want? What framework do you want to use? And all of those things. And I actually think that that still matters, because at the end of the day, if all of this AI stuff goes away, which like we're seeing right now with the Fable model, unfortunately, then someone has to be able to maintain this damn thing.

And it is important that we do that, period.

I'm just not a fan of this idea that, oh, we'll never need to know what is implemented anymore. I think that's [00:03:00] absolute and utter horseshit, and the people that do that are gonna wind up with software they don't know how to run when things actually become a problem, period. Using AI to build software is not about just getting a result.

It's getting a result that you can maintain. So the level of spec file. From there, I essentially built out a loop that allowed me to plan the thing. So what's the difference between a spec and a plan? A spec is the requirements. This is what it needs to do. These are some of the high-level things. A plan is the actual implementation of-- You can think of this kind of like Jira tickets or something.

So you create out this plan, and on here it was really useful

So you essentially have AI come up with what are the steps that actually need to be done for this. And it's not just the steps. One of the best pieces of advice I ever got in my career was ask Claude how Claude would ask Claude to do [00:04:00] this, because Claude is a better prompt engineer than you. Claude knows what Claude needs to be able to do this.

So the plan file is all of the implementation details with the prompts that we want to run with, along with a to-do list that keeps check-- track of it so we can check off each one, and then we can run each of these as a step. Why use a checklist and not just the built-in checklist built into the agent?

Well, what if I wanna run this on a different machine? What if I end up working on it and then transfer to another machine? What if I lose the process or the entire upgrade somehow wipes this out? It's not stored, it's not saved. There's no record of what was going on. So we have to store that inside of a checklist somewhere.

And then you have the execute step phase, which just goes one by one down the list. Now, in the early days, whenever I was building applications like this, I would manually invoke all of these. Lately, with some of the more modern tools, I use the goal loop inside of Claude because I spend all of my time, probably ninety-five percent of my time is up front validating that spec.

So I guess it's something [00:05:00] I forgot to put in this. So whenever the spec comes out, I heavily review the spec, and I understand, oh, no, reviewing Markdown, so painful. Not a lot of fun. It doesn't really, like, draw your eye to anything. I've started having Claude generate a HTML page that it-- I can, I can put all of my critiques about the design line by line on every single aspect, and then submit it to Claude, and then Claude updates the spec with my recommendations.

So I highly recommend doing something like this, making sure that you are spending all of your time validating that spec. Seventy-five to eighty percent of your time should be validating the spec. Then the spec should generate the plan. Once we get to the plan, you probably spend about fifteen percent of your time, twenty percent of your time validating that plan, making sure that the prompts that it's saying are correct, making sure that it is doing what you want it to do.

So this is part of the development process. So this is just a good way of building agents. Plan, or sorry, spec, review the spec, plan, review the plan, [00:06:00] execute all the steps into a goal loop. Now, where this really matters is to have test-driven development and guardrails. Or you don't have guardrails, and the best guardrails, at least I have found, are test-driven development.

And if you're using a language like something like Python, linters and static type checkers. Whatever tools you can use to assure quality, you should be using when you're building these applications. It has to do test-driven development first. It writes out the tests, it writes out the code, and then it iterates on it.

It has to pass my Pystrict on this to work. Otherwise, it's not a good commit. Then at the end, it makes the commit. The commit per step in the iteration pushes it up to GitHub. In the early days, I used to review these each individually. Now, more and more, I have more and more faith in the design that I do at the beginning.

I tend to review these either in a bulk, or I wait till the very end and just go over the code and have it walk me through the code at the very end to see what would happen. Uh, it just depends on what level of distrust you have for it. As your trust in this goes up, the more ability you are to, like, let it just kind of cook.

And [00:07:00] it's really not even about trust. It's more about are you confident in your design and architecture abilities? Because that's where the failure happens. The failure mode happens not because the agent couldn't do what you wanted to do. The agent could do anything you want it to do. The failure mode here is that you didn't provide it the context, the architecture.

You just went into it with a prompt saying, quote, "Build me Facebook," end quote, and hoped that that was gonna build you an application that was actually gonna work, and that was never going to work. Just the same way that if you walked into a room of engineers and just said, quote, "Build Facebook," and walked out of the room, it never would have worked either.

You have to think of it the same way.

So that is agentic coding in a nutshell, is how I view it. So that's process one. Part two is how do we make Temporal good at this? I've been working at Temporal long enough that I remember when agents were absolutely awful at writing Temporal because there wasn't enough content on the internet about it to actually have been training any models and building them useful.

So [00:08:00] in the early days, what we had to do is we had to use the /add-dir directory command inside of the pod code. Every single Temporal SDK has a sample repository with curated samples written by the SDK team and our engineers that are the appropriate patterns and way to implement something

Adding these to Claude and saying, "Hey, here's all the patterns you might need. You should go pull from these when you need them." Absolutely game changer. I was writing successful production workflows long before a Claude skill, skills were even a thing at that point in time

Now we have the Temporal skill, which you should a hundred percent be using. It is again curated by our engineers, made sure that it is correct, and it adds value to it. Here's the kicker, though. I still use the samples repository. I combine both of them [00:09:00] because there are things in the samples repository that are not on my skill.

There are certain small patterns that themselves don't show up in that skill, so you need to have both. It's not a matter of, you know, oh, this context is good enough for something. It's about the more context you give it, the better off it's going to be in the long run. And then finally, you should be using the Temporal docs MCP server, the Temporal knowledge base MCP server.

So the Ask AI button in the top corner of our docs page, you know, the one that you probably ignore because every engineer now ignores an Ask AI button because they think it's just crap, is actually the most comprehensive knowledge base of Temporal across the entire company and across the entire product.

So this knowledge base MCP server essentially is a RAG of all of our knowledge. It's our docs, it's our courses, it's our s-- uh, community Slack forums, it's our, uh, customer support people in our Slack community. It's a whole bunch of curated knowledge. It is the canonical source of all information. It has access to all the sources, and it cites itself when [00:10:00] it's wrong or when it cites itself whenever it, uh, gives you an answer, and it also gives you a...

It gives you a reference or a link whenever it does provide an answer. So this is great. So my three-phase approach, always invoke the skill. Manually invoke skills all the time. I still don't trust auto-loading skills. I think it's dumb. Auto-- Invoke the skill. It's not that hard for you to do. Add that add directory.

Have those samples per the repository, per the programming language that you need. Samples-Python, samples-Java, samples-Go. They're all there. And then have it use that when it's implementing. But during the spec phase, during the design phase, have it validate your patterns. If Claude, during the process, has questions or is unsure about something, tell it that it needs to validate all these patterns against the Temporal MCP server, because this will stop it from having massive amounts of problems later or potentially implementing something wrong later.

Once you have all of these things together, these three components, you can write basically flawless Temporal applications out of the gate that will run perfectly.[00:11:00] 

And that's kind of the gist of it, is that there really isn't much secrets to this. There's no magic incantation that makes AI agent development better. All it is, is it's the good software engineering practices we've always had paired with giving the agent the information that it actually needs. And this is the same way that you would have a successful engineering org without-- in the pre-AI day, days.

You would have proper process that enables everybody to be able to figure out what needs to happen and execute the tasks without everybody clobbering each other or figuring out what's going on. And then from there, you would have good onboarding and good knowledge base and a good thing for people to be able to look at so they know how to write your actual code.

If you take all of this and then you pair it with your own personal style for maybe rules and skills inside of Claude, this can get you code that does what you want, the way that you want it, and looks like code that you have written and can actually maintain. And I think at the end of the day, that's going to be the most important thing

