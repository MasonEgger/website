---
title: "Software Engineering is No Longer About Writing Code"
description: "And let's be honest, it never truly was."
date: 2026-01-01
categories:
    - Software Engineering 
    - AI
tags:
    - LLMs
authors:
    - masonegger
---

For years a heated debate has been waged over a simple question: "Is software engineering a _real_ engineering vocation?"
People on both sides adamantly defend their point of view.
Regardless of what side you're on, the advent of LLMs and code generation has made one thing clear.
Software engineering is no longer about writing code. 
And let's be honest, it never truly was.

<!-- more -->

## A Gem at an Estate Sale

A new hobby that I've picked up is on the weekends my husband and I like to frequent estate sales.
For some reason I feel I don't have enough shit in my house, so I've taken the liberty of filling it with other people's shit.
This leads to finding all sorts of _wild_ gems.
Do I now have a painting of a hallucinogenic view of Austin, TX from the vantage point looking across Lady Bird Lake(1)?
You bet your ass.
But every now and then you come across some fun stuff.
One of my favorite things is to look at antique books, especially school books(2).
Recently I came across a book of logarithms. 
Not a book teaching logarithms, a book with a table of logarithms that you could look up the answer to a specific logarithm given certain parameters.
{ .annotate }

1. If that's not Austin I don't know what is.
2. These make me realize just how much we've dumbed down the education system, because I couldn't do the math those kids were doing in 8th grade when I was a senior, but that's a topic for another day.

![A logarithm table from an antique logarithm book](img/014-software-engineering/logarithms-page.webp)

This fascinated me. (1)
I'd never seen anything like this.
It never occurred to me that someone would calculate the logarithm _for an absurdly large amount of numbers_ and then publish it as reference material.
In hindsight it makes sense, but digital calculators were commonplace by the time I was born.
{ .annotate }

1. And I'm still kicking myself for not buying it.

Regardless of how I felt flipping through the pages of this curious antique on a random Saturday afternoon, it got me thinking.
At some time, _this_ was useful. 
There were people whose professions depended on this book.
There are likely countless structures, such as roads, bridges, dams, that a book like this was consulted when designing it.
People in this profession may have even memorized common logarithms that they worked with on a regular basis.
Or they learned how to calculate them in their head quickly. 
Maybe they even prided themselves on this ability.
They were faster than others because they didn't have to go flip through pages in a book every time they needed a calculation. 
And then, perhaps seemingly overnight, a device became available that could fit in your pocket that could do all of this for you.

![Image of the HP-35 Pocket Calculator ad from HP History website](img/014-software-engineering/hp35.png)

The HP-35, named for its 35 keys (1), made this book obsolete.
While the price tag may have dissuaded people initially, eventually they became cheap enough than anyone could afford one.
And then we put a calculator in the pocket of every person on the planet via their phone(2).
Being able to calculate the logarithms in your head became a parlor trick, and eventually not even taught in school(3).
With this step forward in technology, a skill set that some held, and maybe even prided themselves in, became obsolete.
It was no longer needed.
Sure they could still use it, but the advantage it brought evaporated.
Because now everyone was just as fast as they were.
And this probably scared the shit out of people.
They had been doing something their entire life, they were valued for the speed and precision that they brought, and then suddenly the aspect that gave them a sense of pride was vanquished by a machine.
{ .annotate }

1. We just don't market like they did in the 70s. "Well Bob what should we call it?" "I don't know Frank, how many keys does it have?" It was a golden age. 
2. Anyone else have a math teacher in school tell them "You won't have a calculator in your pocket everywhere you go!"? Joke's on them, we do. 
3. I sure as shit don't know how to _manually_ calculate one.

And this isn't the only time this happened. 
Let's look at a story directly from the software engineering field.

## Dorothy Vaughan and the IBM

If you haven't seen the movie or read the book [Hidden Figures](https://en.wikipedia.org/wiki/Hidden_Figures) yet, I highly recommend it.
It tells the story of the African American women "Computers" whose job it was to do the calculations for NASA during the Space Race (late 1950s - 1960s).
This was before computers as we know them(1) came to be.
The term "Computers" here was actually a job that someone did, where they would perform the advanced mathematical operations of various engineering fields by hand(2).
Because that's what they did.
They computed things.
They may have had specialized mechanical calculators, and some computers were available in the world, but not at the scale you may be thinking.
At this time computers were the size of a room, and had less power than a TI-84 calculator.
So these calculations had to be computed by hand.
And I bet you that they used a logarithm reference like the one mentioned above.
{ .annotate }

1. You know, that thing you're reading this blog on.
2. I'm about to overload the shit out of this term and I can't think of a better way to do it. Big C Computer means the human Computer, little c computer means the thing you think means computer. Good luck.

But as the space race heated up, NASA looked for a faster way to perform these computations. 
This manifested in the form of the IBM 7090. 
The IBM could perform 200,000 calculations per second, way more than a room full of human computers could ever hope to achieve.
But Dorothy didn't balk at this. 
She didn't stick up her nose and say things like "That's slop," or point out every time it made a mistake.
She recognized the potential and the reality of the situation. 
If the machine today could perform X operations per second, what could it do in a year?
A decade? 
Because technology rarely regresses(1).
{ .annotate }

1. And when it does, it's usually not a **good** thing. Typical causes of human scale technology regressions tend to be cataclysmic events, such as meteors, great floods, solar storms, burning of the Library of Alexandria, you get the picture. So while we may foolishly hope that "Maybe things will go back to the way they were before," we often don't think about what it would cost for us to get there. 

So she made a choice(1).
She chose to learn how to program in FORTRAN, and then taught those skills to the other Computers she supervised. 
And those who were the most successful picking up this new skill weren't those who were the quickest at arithmetic, or could use a slide rule the fastest, or had the logarithms memorized, but instead, it was the person who understood _what_ needed to be computed and _why_.
Skills that were paramount one day weren't so much the next. 
{ .annotate }

1. One which cemented her name in the history books and has me writing about her in my blog post some 70+ years later. 

It wasn't the implementation, the raw arithmetic, that was actually the difficult part. 
It was the design. 
The logic. 
The ability to see the completed picture and architect a solution. 
Because if that was simple, the machine would have done that too. 

## The Crucial Element

In both scenarios above, there is a crucial theme that emerges.
It's that expertise and domain knowledge are what bring value, not raw implementation. 
The mathematician who memorized various logarithms didn't _just_ sit around all day calculating them(1).
They were typically doing this as part of other engineering work. 
The knowledge alone was not valuable, it was the engineers wisdom of how to use it that gave his role value.
Same with the Computers who were programming the IBM.
It would not have been possible for them to write the programs if they did not first understand the mathematics behind what they were doing. 
These folks adapted to the new tools that were introduced, and became more productive.
Yes there was some overhead in learning the new tooling, but that's life.
There was overhead in you learning how to walk too.
Probably a lot of falling on your face.
But once you got the hang of it, you achieved a much more efficient way of moving yourself through your environment.
The same concept applies here. 
Because the alternative isn't great.
The alternative is to be left behind.
To become obsolete.
{ .annotate }

1. Although it is funny to envision someone just sitting in the corner doing this for no reason.

## Witnessing Abstraction

The two examples above aren't isolated incidents.
They are a phenomenon that has been happening throughout human history since its inception.
It is the abstraction of a process, leading to the simplification of work, and the next step of the evolution of an industry.
Let's bring this back to our field, software engineering. 

The software engineering field is littered with abstractions.
Programming a computer started out by actually programming the physical bits of the machine.
Then an assembly language was created to make that simpler.
Next we created languages like FORTRAN and COBOL to abstract away from the assembler.
Object oriented programming, virtualization, the list goes on and on we continually abstract away complexity to make life simpler.

But then, if you look at programming languages at least, we kind of lost our way.
Sure we made _more_ programming languages.
And we have made things slightly simpler.
But the major leaps became smaller.
And when we do make massive leaps, such as WYSIWYG editors, no or low code solutions, or anything that does make writing code more palatable to the masses, these tools are generally mocked.
You'll hear things like **"That's not _real_ programming."** or **"You're not a real programmer if you use X language."**
Once we figured out the modern form of memorizing logarithmic tables, ie knowing how to code, was **insanely profitable** we started doing it. 
And then, we took things the _other_ direction!
We started making our abstraction layers **more** complex!
Don't believe me? 
How many load bearing YAML files do you have in your infrastructure right now?
Did replacing that monolith with 47 microservices really simplify things?
If I ask you to describe your JavaScript build process, can you do so without sobbing?
Instead of focusing on making things more human readable, more accessible, we went back to making things more machine readable.
We architected for _cool_ instead of practical(1).
Don't get me wrong, these new tools and processes did help large enterprises like Google, Amazon, Netflix, etc. manage the massive scale they were handling. 
But then we _pushed_ them on every developer who **didn't need them**.
Small startups with three engineers and an angel investor were more worried about multi-region replication than getting a product that their users could actually use(2).
Complexity became _cool_.
{ .annotate }

1. I call this "Resume Driven Development" but that's an _entirely_ different blog topic.
2. If you look up "Premature Optimization" in the dictionary, it redirects to Kubernetes.

And why did we do this? 

![Mr. Krabs gif saying "Hello, I like money"](https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExczl6OWRlMHp6N2Jzb2U2MWVzNGE2N3BtOTJvN3NrZXA5eGplaGFmYiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/SOmjomEnNHsrK/giphy.gif)

Because it was lucrative to do so!
Because no one gets paid if the app isn't constantly changing.
We got so tied up in our own hubris, we stopped our abstraction journey. 
We never made the next major step.
Until recently.

## Nature Abhors a Vacuum 

So we had a simplicity vacuum.
We kept abstracting things into more convoluted things.
New text formats, new languages, new programming models, new paradigms.
And the evidence we were going in circles was **SO OBVIOUS!**

What was this evidence?
The fact that everything new and shiny was just a slight rehash on something old. 
Serverless functions? 
Do you mean Perl and `cgi/bin`?
Service discovery?
You mean dynamic DNS with some extra bits?
Oh look Laravel is popular(1)!
MVC coming back!
The list goes on and on and on and we kept re-inventing the wheel telling ourselves it was new.
{ .annotate }

1. No shade to the Laravel folks, they're doing a fantastic job. Honestly, no one gives them the credit they deserve for making PHP popular again in 2025.

> "Well Mason if it's so simple why don't you tell us what we were supposed to do." - probably you, as you're reading this blog right now.

Isn't it obvious? 
Why are we still writing for computers?
Why aren't we just speaking to them the same way I'm speaking to you now? 
Why is human language not the primary programming language?
And before you take a deep breath and come at me with your big voice, stop.
There's no need.
Because this vacuum has recently been filled.
It's over.
The next major abstraction has been implemented.
The industry has proceeded to its next evolution.
And what was the solution?
AI.

## So How Is This Different from `INSERT_OTHER_TOOL`?

I know what you're thinking. 
We've seen tools that were supposed to "be the end of programming" before right?
We tolerated the CASE tools of the 1980s, we learned worse programming languages to use 4GLs, we drag-and-dropped our share of boxes, tiles, widgets, buttons, forms, etc in the visual programming.
We've been sold snake oil on this time and time again so if you're wary(1), I don't blame you.
But trust me when I say, this time it's different.
{ .annotate }

1. As any rational person should be. 

The fundamental flaw with all of these previous attempts was they were all essentially deterministic template systems.
Their functionality was bound to what they were explicitly programmed to do. 
There was no reasoning, no adaptation, no extending.
They were static, finite, and limited.

The sheer scale of AI is mind boggling.
The amount of training data is vast.
If previous tools were created by dozens of engineers, AI has "learned" from millions of developers.
Users don't have to learn a new language to use it, they can just speak to it in natural language.

And best of all, it outputs the languages that developers already know and love.
It doesn't try to change developers tooling, it augments it.
It can explain why it made a choice to use a function, or how to compile the code.
Want it to explain the code to you like you're five, or like you're a senior engineer?
It adapts to you and your needs.


Now, could this all still go belly up tomorrow? 
Sure.
Anything is possible(1).
But the trajectory on this feels different.
How do I know?
When was the last time you opened up your VSCode UML->Code generator?
Never?
Ya.
Me neither.
But how many people are using AI to write code every day now and talking publicly about it?
Now think about how many people _aren't_ shouting about it from the rooftops.
It's not vaporware.
You have to look through the bullshit online from both sides.
Some people are claiming that AI is the second coming of Christ and others are saying it produces more slop than a pig farm.
Neither of these types of folks can be taken seriously. 
But look around.
Ask your colleagues, your trusted friends what they think.
Look for small blogs from people without a lot of followers.
These folks have nothing to gain, and are just sharing their experiences.
I'm not going to tell you AI is perfect.
It sure as shit isn't.
But this is the most exciting thing to happen in our industry since the internet.
And it would be an absolute shame if you went full ostrich and buried your head in the sand during this absolutely exhilarating time. 
{ .annotate }

1. But you better hope it doesn't! Or that you have your 401k in gold bars under your bed because if the AI bubble pops the economy goes with it :sob:

## Code is Cheap

Like it or not, we're experiencing the _exact same_ moment Dorothy Vaughn and her Computers experienced at NASA.
A new technology has entered the scene, and it can out perform **every single programmer on the planet**(1).
It's faster than you.
It's more well read than you. 
It has more energy than you. 
{ .annotate }
1. Oh I can't wait to read your hate mail. I can hear the sound of a thousand GMail tabs opening now.

And you know what?
**Who gives a shit?**
Are you jealous of your car because it can carry more weight than you can?
No?
Then why are you worried about some machine that generates code?
You still have to guide it.
You still have to tell it what to do and what to build.
The value of software engineering is _not_ the code, it's the product.

But you may ask "What about the hallucinations? What about the incorrect code?"
Yeah?
So what?
Do you write code perfectly the first time, every single time?
No, you don't(1).
Do you think that other engineering disciplines tools execute perfectly every single time?
At the end of the day, you're still responsible for the code you push to production.
Whether you write it, the intern writes it, or AI writes it.
But if it takes you a day to write a 10,000 line application and it takes AI 45 seconds and then you an hour to review it, it's _obvious_ which option you should choose.
{ .annotate }

1. And if you try to tell me you do you're lying to me, and you're lying to yourself. 

So why are people so terrified right now?
Because just like the engineer in our first story, they valued the knowledge of the implementation than the wisdom of the design.
And to be fair, you have every right to be terrified right now.
For many years we told people "Just learn how to code and you'll have a good, middle class life". 
Code is no longer the bottleneck. 
**Code is cheaper than it ever has been, and the most expensive it ever will be again.**
The career of clocking in, writing code, and clocking out is coming to an end very quickly. 
This isn't to say code won't be written.
This isn't to say code won't need to be reviewed.
But who, or I guess, _what_ is doing the writing and verification is rapidly changing.


## The `Is Software Engineering REALLY Engineering Debate`

For years many have argued if software engineering is a _real_ engineering vocation(1).
There are many facets to this debate, but one of the primary ones was that software engineering focused too much on the implementation details, and resembled something more of a craft.
The rationale for comparing this to a craft was that success depends heavily on individual skill, intuition, and accumulated experience rather than applying established formulas.
For example, a mechanical engineer doesn't machine every part that goes into their design for an engine. 
{ .annotate }

1. There is _sooooooo_ much history here I will not be explaining it all. If you're curious, look it up. There's a lot.

However, with the advent of AI and the implementation of software becoming automated away, I believe software engineering is starting to look more like a traditional engineering discipline. 

The "craft" layer is actively being abstracted away as we speak.
Software engineers won't manually be writing the code for much longer.
The plumber critique dissolves when you're no longer holding the wrench.

When code generation becomes abundant, constraints become the focus.
So often we put things off, make compromises on designs, accumulate technical debt for the sake of speed.
Speed is no longer an issue anymore.
This may very well be the end of technical debt. 
Or at least, human created technical debt.
Will there be AI technical debt?
Absolutely.
And we'll solve for that as well.

Verification now becomes paramount.
We can't blindly trust the AI code(1).
We must define and understand correctness, and how to ensure it. 
This is very much a traditional engineering discipline.
{ .annotate }

1. No matter what some influencers say. 

Lastly, the science, the theory is no longer optional.
It's essential. 
Algorithms matter.
Designing a distributed system? 
Better understand CAP theorem, consensus protocols, various failure modes and more.
All of the theory that computer science undergrads learned and _never_ used in their day job isn't just academic anymore.
It's their fast pass to getting ahead with AI(1).
{ .annotate }

1. But only for a short while. Don't think others won't catch up.

And you may think I'm blowing smoke out of my ass, but I'm so happy to say that as I was writing this, I _already_ saw an example of this in the wild(1).
I follow the development of GhosTTY on Twitter because it's interesting, and it's creator, Mitchell Hashimoto, made a post about someone who used AI tools to do an analysis of GhosTTY to find a bug.
This user had no experience with the programming language the tool was written in, the operating system they were using it on, how terminals are even built, **BUT** they knew how to drive AI and had an engineering mindset.
They applied their skills and were able to use AI to understand the problem, write a script, and submit a patch that fixed **4 real crashing cases**.
All with **zero knowledge of the code base prior**.
{ .annotate }

1. Thank you very much Mitchell Hashimoto.

![Image of Mitchell Hashimoto's Tweet, link below](img/014-software-engineering/tweet.png)

_source: [Mitchell Hashimoto's Twitter](https://xcancel.com/mitchellh/status/2006114026191769924)_

This is the sign of a mature engineering discipline.
Implementation is removed.
Critical thinking, and engineering mindset, and the right tool solved the problem.

## A Fork in the Road

So where does that leave _all_ of us, the software engineers? 
The programmers? 
The coders?
It leaves us with a choice.
The same choice Dorothy Vaughn had.
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
* 10 years down the road, handwriting code will be viewed the same as calculating derivatives in Calculus class. 
    You have to do it by hand to learn the concepts, but once you get into the "real world" you'll never do it that way again. 

You may think this is wild.
You may think I'm bat shit crazy.
That's fine.
I've watched some of the most brilliant programmers I know go from skeptics to avid users.
Hell, even Linus Torvalds, creator of Linux and programming wizard, recently admitted in a [PR](https://github.com/torvalds/AudioNoise/commit/93a72563cba609a414297b558cb46ddd3ce9d6b5) that he vibe coded that AI wrote the code better than he could. 

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