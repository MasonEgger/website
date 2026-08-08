---
date: 2023-03-13
authors:
    - masonegger
categories:
    - Meetup Talk
---

# Build Durable Applications with Temporal

An hour on why modern applications fail in boring, preventable ways, and what changes when your business logic can survive the process it's running in.

<!-- more -->

## Introduction

We broke the monolith into services because the monolith was hard to change.
What we got back was a network between every function call, and a whole category of failure that didn't exist before: the partial success, the timeout you can't distinguish from a slow response, the retry that charged the customer twice.

Most teams answer this with the same scaffolding every time.
A queue, a state table, a reconciliation job, a retry loop with backoff someone wrote at 2am.
That code is not the product, but it's most of the codebase.

Temporal makes durability a property of the runtime instead of something you hand-roll.
The talk walks through a small application, runs it, kills it mid-execution, and watches it pick up exactly where it left off.

## Delivery

This talk was given at:

* Austin Python User Group, March 13, 2023
* Temporal Austin Meetup at SailPoint, July 22, 2024

Adapted from Brian Hogan's presentation, with the examples ported to Python.
