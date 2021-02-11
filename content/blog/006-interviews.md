---
title: "Tech Industry Interviews are Bullshit. Let's Make Them Better"
type: "Blog"
hero_image: "portrait.jpg"
date: 2021-02-15
tags: ["interview", "technical interview", "coding", "jobs", "career"]
categories: ["blog"]
description: "If you ask almost any programmer what their least favorite part of the industry is, they'll likely say interviewing. The Tech industry has transformed what should be a simple process into an unholy nightmare. When a majority of your industry says it _loathes_ the interview process, perhaps we should examine it more and attempt to make it better."
---

## Let's Just Say What We're All Thinking
Technical interviews suck. I don't think I've ever met someone who was like "You know what my favorite part of our industry is? The interviews! I love being put on the spot and being harshly critiqued over my ability to think on the spot and recall random algorithms that no one ever actually uses in production." Yet, somehow, we continue to double down on a process that is not only extremely stressful but _overwhelmingly_ biased.

## Let's Put It in Perspective
Imagine you were interviewing for a job as a short order line cook at a restaurant chain. For this example, we'll call it _French Toast House_. You arrive at the restaurant for an interview and are greeted by the company's accountant. Now you'll never actually work with the accountant, you're a cook but the company wants people outside of the cooks to evaluate you. You have a nice conversation with the accountant, and you try to ask basic questions like, "Do we work with gas or electric stoves?". The accountant admits that they don't know, they have nothing to do with the preparation of food, but they do want you to solve this brain teaser about transporting a fox, chicken, and corn across a river. They get up to leave and ask if you have any questions about the job. You decide to not ask any because they are unaware of the cooking procedures within the kitchen and when you tell them you don't they frown and say "That's a shame.". You are then interviewed by one of the night shift cooks. They just got done cooking 100,000,000 pieces of French toast because last night was prom night and _everyone_ decided to come to the restaurant at 3:00am in the morning. They look utterly exhausted and completely disinterested in having to be there. They ask you routine questions like what a stove is and how would you handle a grease fire, but then their pager goes off. They swear loudly because apparently more French toast is needed and it's their turn to be in the bi-monthly French toast hell. You ask if it is always like this and they laugh like a deranged person who just figured out they can put Red Bull in the coffee machine and _never sleep again_ as they walk out of the room, leaving you alone for the next 10 minutes until it's time for the next interviewer. Your next interviewer is the Senior Short Order Line Cook. You spend the first five minutes getting to know each other but then the interviewer says it's time for "a simple test, won't be too hard". You are then asked to recreate Gordon Ramsey's famous Beef Wellington, but as an added challenge you aren't allowed to use any utensils. You are confused since you thought you were going to be making French toast, but the interviewer explains that they like to see how you do under pressure. You ask if you could go to the kitchen to attempt this experiment but are told to just diagram it on the white board. You muddle through the exercise as best you can with your limited knowledge of Beef Wellingtons but when it's over you can tell the interviewer is disappointed. They come up and show you how they would have solved it and tell you that it's a standard question from the _Cracking the Short Order Line Cook Interview_ book. You're shown out of the building and told they'll get back to you with their decision soon. You make a mental note of how to cook Beef Wellingtons, just on the off chance it shows up at your interview at Burger Queen. 

If you were offered the job would you take it? Depends on your situation. You're pretty sure you'll be able to work with real utensils and not have to cook Beef Wellingtons but didn't see any evidence of this. Was this a fair interview process? No. Yet some version of this dynamic is currently being used to interview software engineers around the world, holding them to a much higher standard and rigging the situation against people who don't know the secret knock of admittance. 

## Why Is It Like This?
To be honest, I have no earthly idea. I don't know where this form of interviewing came from. My assumption is that one of the larger companies decided to develop a hiring practice to ensure that they could "attract and hire top talent" [^1]. Then everyone else in the industry was like "Hey look! Hooli does it like this, so should we!". There's a very blatant issue with this approach. Your 30 person startup does not have the same hiring challenges as the most wealthy company on the planet. I don't know who needs to hear this, but you are _not_ Hooli. You're not. "Well if we continue growing our customer base..." No. Stop. You do not move petabytes of data a day. You do not have 3 billion concurrent users. _Maybe_[^2] these large companies need this type of process because the problems they are trying to solve have legitimately never been solved before. But you offering a store front for people to buy stuffed armadillos does not have the same challenges, therefore you should not adopt the same practices. 

## Why Do the Engineers at These Companies Participate in This Process?
I honestly don't know. I know that I don't. I refuse. If I had to guess about other people, I'd say it's a mixture of ego, revenge, and gatekeeping. 

* "Well, I had to do XYZ when I was interviewing, so they should too!"
* "I went to a Top 10 Computer Science School. Where did you go?"
* "I don't want to hire students from XYZ University, their program isn't good."

And the odd thing that I've found is that it's usually only the younger engineers who do this. When I've interviewed with more senior engineers who haven't thought about how to balance a tree since their last interview[^3] don't ask questions like this. They ask practical questions. I know one senior engineer who always asks the exact same interview questions regardless of level. He claims he can know everything about a candidate from three relatively simple programming questions, each of which should be solvable by a student who has finished a CS 101 course. I had another senior person setup a test where I had to debug an issue with a web server. None of this "If you throw an egg down a hallway how many platypuses would it take to sing _La Traviata_"[^4]. Questions that are actually relevant to the job that test proficiency, not familiarity with questions. 

## "Well Then, If You Don't Like It What's The Better Option?"
I mentioned it above but I'll repeat **Ask questions that are relevant to the job you're interviewing the candidate for.** If you are interviewing someone for a job to work on the front page of your website, they probably don't need to know how to build a binary tree from scratch. And I'm sure if that odd case ever did actually come up they would do what _every_ engineer[^5] does, _**They'll Google It**_. It's as if everyone believes their workplace is this [XKCD comic](https://xkcd.com/1168/). 

![XKCD 1168 "To Disarm the bomb, simply enter a valid `tar` command.](https://imgs.xkcd.com/comics/tar_2x.png)

Memorization of knowledge is an outdated measure of intelligence. We live in a world where I can ask literally any question I have ever wanted and get an answer instantly. Does having this knowledge in your mind advantageous? Absolutely. But is it an indicator of ability. Not in the slightest. In actuality it could become a hinderance. The amount of times I've learned something new about a topic I already felt very knowledgeable in because I chose to look something up to double check is non-trivial. The information in your head doesn't update unless you choose to update it. 

## How I Interview People
I enjoy interviewing people. It's always fun to add someone new to your team and the people you meet along the way are fascinating. I split my interviews into three parts.

1. Let them talk about themselves
2. Technical interview
3. Discuss the job

### Part 1 - Let the Candidate Tell You About Themselves
Candidates tend to want to tell you about themselves and their work. So let them. Questions like "So tell me about yourself" can be seen as vague but some candidates really enjoy that question. If they don't, try to make a more pointed question. "Tell me about your last job." "How did you get into programming?" "What is your favorite programming language and why?" These are all really good ways to get a conversation going. My favorite question to ask is "Tell me about a project that you're proud of." Most developers have had at least one project that they are super happy to talk about. The project might taught them something new, been really fun to work on, solved a complex issue, whatever it is, you want to know about it because it will showcase the candidates ambition. I always hire enthusiastic, ambitious, and curious people ready to learn. That mindset is contagious and it elevates a team. 

### Part 2 - Technical Interview
"Wait Mason, didn't you just go on a long winded rant about how you hate technical interviews?" To an extent. I hate technical interviews for the sake of cleverness. I do, however, acknowledge that we have to have some metric of determining ability. I have a three-pronged technical interview. The first question is for them to implement the classic "Fizzbuzz" program[^6]. You may laugh, but you'd be surprised how many people are filtered out with this question. This is the bare minimum bar for me. If a candidate can't pass this then I believe they will benefit more from practice and study than a job that has demands. The second question I ask is for the candidate to implement the game of craps. I usually explain the game and have a printout for the candidate to reference. This assignment requires keeping state and iterating until an outcome is reached. Finally, I tend to ask a question about removing all duplicate characters from a string and getting a count of all the characters of the same type in a string. I love set theory so if you use a set for this question I smile on the inside. This is the question I'd like to see some form of data structures being used.

Note, none of the questions require advanced knowledge of data structures or algorithms. As someone who's worked in the DevOps space for a while, I rarely come across these concepts so I don't interview for them. I assume that the person who I hire will reach for these tools when necessary and if not _that's what a code review and being a mentor is for_.

### Part 3 - Discuss the Job
This might be the most controversial thing I say in this entire blog post. I show every candidate who does an onsite (or virtual onsite) our Jira backlog. I show them what the team is working on. I encourage them to ask questions about the backlog. It is just as much about them interviewing me as it is me interviewing them. I had an experience where I took a job and in our first sprint planning I looked at the backlog and saw not a single thing that I wanted to work on. I spent the next year and a half hating my job. I want to ensure that doesn't happen to anyone on my team. I also take this time to discuss architecture, the technologies we use, and ask questions about these technologies. If the role is for a Senior Kubernetes engineer then I should definitely check their knowledge. If you have a good recruiting team supporting you though, this isn't as necessary because they should have already weeded out the people with little to know experience in the technologies you need. 

### After the Interview
Hopefully you're not the only person interviewing a candidate. Hopefully it is a team of people relevant to the project. Trust your teammates. Tell them what you're going to be interviewing the candidate on so they can adjust accordingly. Everyone should interview every candidate with the same outline. Switching it up to how you feel that day just allows for bias. 

## Final Thoughts
We can do better than this. I love the tech industry. The people who I've met here are amazing and the innovation is inspiring. Talk with your manager. Talk with your teammates. Discuss how you can make the process better. If no one talks about it, it will never change. And then when you're ready to move on you have to crack open your copy of _Cracking the Short Order Line Cook Interview_ and remember exactly how to make Gordon Ramsey's Beef Wellington. 

 
[^1]: By the way, "hire and attract top talent" is just a fancy way of saying "mask our discrimination by hiring people that look and think like us".

[^2]: And that's a _big_ maybe.

[^3]: Or ever. Some of the best engineers I've ever worked with have 0 formal education in Computer Science.

[^4]: The answer is 17. 12 to sing the different parts and 5 extras in case any of them run after the egg. Usually the mean platypus attention span can be calculated by taking the sum of the number of platypuses divided by the average length of an egg. This can range from 53.12mm for a medium sized egg to 59.675mm for an extra large egg. For the sake of brevity I won't go into math of converting platypuses to millimeters. 

[^5]: Including you, snobby person currently interviewing the candidate

[^6]: Always give a detailed assumption of the program. Don't assume everyone knows what Fizzbuzz is.