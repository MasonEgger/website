---
title: "Django or Flask: How Do I Choose Which To Use?"
type: "Blog"
hero_image: "portrait.jpg"
date: 2021-01-17
tags: ["python", "django", "flask", "web development"]
categories: ["blog"]
description: "As a Python developer, I love both Flask and Django. But how do I choose which one to use?  Over the years I've developed a very simple test that
helps me decide if I'm going to use Flask or Django for my projects."
---

I love both [Django](https://www.djangoproject.com/) and [Flask](https://flask.palletsprojects.com/). Due to the recent release of DigitalOcean's [App Platform](https://www.digitalocean.com/docs/app-platform/) I have found myself writing more and more webservices using these two frameworks. I now find myself answering the same question very often, which is how do you choose which one to use? Well luckily I have a simple checklist of questions to ask myself that helps me determine which framework to use.

# The Questions
Currently I ask myself three questions to determine which framework I'm going to use. I will admit that currently I'm building mostly one-off applications and things for fun. If I was designing a large application for a company or open source project I would probably use these questions as a starting point, but I wouldn't use this as a finite decision maker.

That being said, it's probable that you may not agree with my choices. _This is fine._ Each framework is 100% capable of solving every problem I throw at it. These are just my personal preferences after roughly 8 years of building Python microservices.

## Database Access

* Do you need to access a database like MySQL or Postgres?
    * Yes - Django
    * No - Flask

I am a huge fan of the Django ORM. It was one of the first tools I learned when I started doing Python web development and it makes my life simple. So if I find myself needing a relational database I immediately find myself reaching for Django. There are other Python ORMS such as SQLAlchemy that are also good. Flask + SQLAlchemy is a perfectly fine choice as well. But I tend to go with the Django ORM. 

However, if I need a different data store, such as a Key Value store like Redis, I will find myself reaching for Flask. If I don't need the Django ORM I don't use it. It doesn't add to much value for me in this situation. It's all about the right tool for the job.

## User Authentication

* Do you want to have users be able to login to the system?
    * Yes - Django
    * No - Flask

After the ORM my next favorite feature of Django is its authentication framework. This is another feature I've been using since I got started with Django and it has been fun watching it grow and gain features throughout the years. I enjoy this feature so much I have never implemented authentication in Flask. Maybe it's fantastic. I wouldn't know. I have always found Django's auth to be easy to use and extremely flexible. So, if I need user authentication, I always pick Django.

## Container Size

* If deploying a microservice, does size of container matter?
    * Yes - Consider Flask
    * No - Consider Django

Sometimes when you're deploying microservices the size of your container makes a big difference. We would expect Flask, being a microframework, to have a smaller footprint than Django, which is exactly the case. Below is data regarding three docker containers that I've built. One is ubuntu with pip installed, one has flask installed and the other has Django installed. 

```
ubuntu              ...     394MB
flask               ...     398MB
django              ...     428MB
```
As we can see, there is a 30MB difference between the containers. This is just the base framework, not including other libraries and middleware. While this may not seem like a lot, it can make a difference in deployment environments. I rarely have to ask myself this question, but it is definitely something that needs to be considered.

## The Decision

Once I have run through my list I tally it up. If Django was an answer to the database or authentication questions that is usually enough for me to go with Django. However, if that isn't the case I almost always go with Flask. If I'm writing a small microservice, cron task, or even a small REST API Flask provides everything I need to write clear, concise code. It's not that Flask can't be used to build large applications. In fact, the first job I had out of college was building a huge REST API in Flask. I just enjoy writing smaller apps in Flask and larger apps in Django. 

## Conclusion

So there you have it. That is how I determine if I'm writing my application in Django or Flask. The process may seem simple, but I have always been happy with the implementation of my apps. If I was working in a team or the code would need to be maintained by others I would use this framework to start a discussion instead of mandating a tech stack, but for my personal projects it's good enough for me. 


_If you're curious about deploying Django or Flask to DigitalOcean's App Platform checkout this [Django](https://www.digitalocean.com/community/tutorials/how-to-deploy-django-to-app-platform) and [Flask](https://www.digitalocean.com/community/tutorials/how-to-deploy-a-flask-app-using-gunicorn-to-app-platform) tutorial that I wrote. If you're new to DigitalOcean and want to try it out you can click [here](https://do.co/mason) for a $100 free credit for 2 months with a new account._