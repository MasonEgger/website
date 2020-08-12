---
title: "Using Signals to Clean Up My Mess in Django"
type: "TIL"
tags: ["python", "rest", "django"]
categories: ["til"]
date: 2020-08-12
description: ""
---

While trying to cascade deletes of Droplets when I delete the parent Class they
would have been associated with in DigitalOcean Classroom, I attempted to
overwrite the `delete` method. This only works part of the time, so I instead
turned to signals, specifically the `post_delete` signal. Now no matter what
triggers the delete on the Class, my Droplets are cleaned up and deleted from
my account. I plan to use signals more for the creation process as well.
```python
@receiver(post_delete, sender=Droplet)
def droplet_delete(sender, instance, using, **kwargs):
    droplet = digitalocean.Droplet(token=settings.DO_TOKEN, id=instance.droplet_id)
    try:
        droplet.destroy()
    except NotFoundError:
        pass
```