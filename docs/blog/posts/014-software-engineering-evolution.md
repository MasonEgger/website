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

For years a heated debate has been waged over a simple question: "Is Software Engineering a _real_ Engineering vocation?"
People on both sides adamantly defend their point of view.
Regardless of what side you're on, the advent of LLMs and code generation has made one thing clear.
Software Engineering is no longer about writing code. 
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
There were people who's professions depended on this book.
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
Let's look at a story directly from the Software Engineering field.

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
They are a phenomena that has been happening throughout human history since its inception.
It is the abstraction of a process, leading to the simplification of work, and the next step of the evolution of an industry.
Let's bring this back to our field, Software Engineering. 

The Software Engineering field is littered with abstractions.
Programming a computer started out by actually programming the physical bits of the machine.
Then an assembly language was created to make that simpler.
Next we created languages like FORTRAN and COBOL to abstract away from the assembler.
Object oriented programming, virtualization, the list goes on and on we continually abstract away complexity to make life simpler.

But then, if you look at programming languages at least, we kind of stopped with the abstractions.
Sure we made _more_ programming languages.
And we have made things slightly simpler.
But the major leaps became smaller.
And when we do make massive leaps, such as WYSIWYG editors, no or low code solutions, or anything that does make writing code more palatable to the masses, these tools are generally mocked.
You'll hear things like **"That's not _real_ programming."** or **"You're not a real programmer if you use X language."**
Once we figured out the modern form of memorizing logarithmic tables, ie knowing how to code, was **insanely profitable** we started doing it, and gate keeping it. 
And then, we took things the _other_ direction!
We started making our abstraction layers **more** complex!
Don't believe me? 
How many load bearing YAML files do you have in your infrastructure right now?
Did replacing that monolith with 47 microservices really simplify things?
If I ask you to describe your JavaScript build process, can you do so without sobbing?
Instead of focusing on making things more human readable, more accessible, we went back to making things more machine readable.
We architected for _cool_ instead of practical(1).
And why did we do this? 
{ .annotate }

1. I call this "Resume Driven Development" but that's an _entirely_ different blog topic.

![Mr. Krabs gif saying "Hello, I like money"](https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExczl6OWRlMHp6N2Jzb2U2MWVzNGE2N3BtOTJvN3NrZXA5eGplaGFmYiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/SOmjomEnNHsrK/giphy.gif)

Because it was lucrative to do so!
Because no one gets paid if the app isn't constantly changing.
We got so tied up in our own hubris, we stopped our abstraction journey. 
We never made the final step.
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
The final abstraction has been implemented.
The industry has proceeded to it's next evolution.
And what was the solution?
AI.

## The Magic Code Button

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
The value of Software Engineering is _not_ the code, it's the product.




## The `Is Software Engineering REALLY Engineering Debate`

## A Fork in the Road

## Leftovers

And the software engineer who spent years memorizing functions, algorithms, and learning a code base will to move on with their day and be more productive as we too find the implementation details of our job automated. 