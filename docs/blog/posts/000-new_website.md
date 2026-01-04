---
title: New Website!
description: Every few years I grow tired of my website and build a new one. Here's what I did this time.
date: 2019-01-20
categories:
    - Software Engineering
tags: 
    - Website
    - Hugo
authors:
    - masonegger
---

# New Website!

Every few years I grow tired of my website and build a new one.
More often than not, it is actually me trying to simplify something that I
made more complicated than it needed to be. After listening to friends and 
co-workers, I'm finally making the jump to static sites.

<!-- more -->

## My Previous Sites
I've had probably half a dozen websites since my first one in 2012 (I think?). 
My first website was HTML made in Dreamweaver for part of my undergraduate 
Music Technology class. In this class we covered a short section on what was 
called "web development", then more music related technologies such as Finale 
and ProTools. I purchased my domain 
[masonegger.com](https://masonegger.com) and deployed the site. Shortly
after that I decided to pursue Computer Science in college (that story is
_long_ and I'll probably write a blog post on that later). After a few years
and rough iterations of my basic HTML site I decided to learn Django. I worked
for the Computer Science department and we had decided to rewrite our site
using Django, so I took it as an opportunity to learn on my own and make my
own website. I created three separate sites `www`, `resume`, and `labs` (I
was a lab instructor at the time and wanted to host my materials). This was all
fine and good but the overhead required for each of these sites was a database.
Now I was just using `sqlite`, but the process of building an entire database
driven site around what was mostly static content, seemed unnecessary. I liked
the idea of trying to use the Django admin panel as sort of a Content Mangement
System (for anything other than a small website, this is a _bad_ idea) but,
as it turns out, I rarely go back and edit my site (And by the time I do I've
forgotten the password so I have to login and run `django admin` to reset the
bloody password). The other issue is that my version of Django has become
hopelessly obsolete. Like, refactor the whole site to move to 2.0 obsolete. So
I was faced with the choice of a) redo the site in Django again with the same
frontend (I'm actually not really a fan of it anymore) or b) explore new
options. I chose that it's time to explore new options.

## Static Sites
When I first started looking into build a website, my first boss had tried to
point me to static sites. He said something along the lines of "You don't need
a dynamic site, and the security of it will eventually cause you problems."
Luckily, I haven't had security issues with my website (You have to have
something of value to be an actual target :joy:), am running it on FreeBSD
which, more often than not, boggles the minds of pen testers, and finally, am 
not an easy to hit wordpress site. I started looking around into static site
generators and immediately could see the benefits. Once the templates are setup
I can simply write Markdown for posts. I enjoy this way more than logging into
a WYSIWYG editor. There is no denying the speedup implications regarding a 
dynamicy python site vs. static html files. I am also learning Golang for my
current job, so that naturally brought me to [Hugo](https://gohugo.io/)
(which I had previously received many glowing recommendations for). After
looking around at the pre-built templates I finally settled on one that I liked
(what you're seeing now).

## The Desire for a Blog and the Move Away from Medium
I've always dabbled with the idea of writing a blog. I had a WordPress blog
site once and acually liked it (until I accidentally nuked the cloud instance
from orbit and had no backups:grimacing:). I tried building a blog in my old
Django site, but absolutely loathed the interface, even after vamping it up
with TinyMCE. I started a [Medium blog](https://medium.com/@masonegger) and
even published a post through my employeer HomeAway. However, I recently
learned that Medium is starting a [membership program](https://medium.com/membership)
 where you will have to pay to get full access to the site. As someone who 
founded UnlockedEdu(1) and
doesn't believe that knowledge should be hidden behind a pay wall, this just
didn't sit right with me. I had been putting off updating my website and moving forward, but I
do believe the Medium situation was the straw that broke the camel's back. I
will still have to publish there due to work (when I write public blogs) but I
will write a post with a link to the blog. I don't think I can republish it
under this site since it is technically the property of my company (No
animosity in this statement at _all_, I love my job and my company. It's just
how it is).
{ .annotate }

1. A now defunct project where I aimed to make open education resources. I still believe in this, but this project never really took off.

## The New Site
Low and behold, a new site was born. It's the site you're reading this blog on.
After the initial "what the hell is this?" phase with Hugo I've come to enjoy
it. The template that I chose was a good starting point, and I have spent more
time modifying the template than actually writing the initial content of this
site, but I'm happy with the result. Once I get the deployment of this site
up and have automated the release process, be on the look out for another blog
post detailing this process.

### _Welcome to my new site, it's good to have you here._
