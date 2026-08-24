---
title: Stop Using Timeouts to Dictate Business Logic
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

## Title Options
- "Stop Using Timeouts as Business Logic in Temporal"
- "Timers vs Timeouts in Temporal: When to Use Each"

## Introduction
- Common pattern: developers new to Temporal reach for timeouts to control timing behavior in workflows
- This conflates two different concerns — infrastructure safety nets vs business logic
- Post will clarify when to use each and show why timers produce better workflows

## The Scenario
- Concrete example: an order fulfillment workflow
  - Customer places order, warehouse must confirm within 30 minutes
  - If no confirmation in 30 min, send a reminder
  - If no confirmation in 24 hours, escalate to a manager
  - If no confirmation in 48 hours, cancel the order

## The Timeout Approach (and Why It Falls Short)
- Show how someone might model this with activity/workflow timeouts
- Problems:
  - **False failures** — a backed-up task queue triggers timeouts even though work isn't broken
  - **No granularity** — timeouts are binary (succeed or fail), no room for graduated responses like remind → escalate → cancel
  - **Poor observability** — timeouts only surface as failures, hard to distinguish "timed out because broken" from "timed out because slow"
  - **Conflated concerns** — infrastructure health and business rules are tangled together

## The Timer Approach (The Better Way)
- Show the same scenario modeled with `workflow.sleep()` / timers and signals/updates
- Use a race pattern: wait for signal OR timer, branch on which fires first
- Benefits:
  - **Explicit in event history** — every timer is a visible, queryable event
  - **Graduated logic** — easy to model remind → escalate → cancel as sequential steps
  - **Deterministic replay** — timers are first-class in the workflow state machine
  - **Separation of concerns** — business timing is in workflow code, infrastructure protection stays in timeout configs

## So What Are Timeouts Actually For?
- Guarding against infrastructure failures: worker crashes, network partitions, zombie processes
- Activity start-to-close timeout: "if this activity hasn't completed, something is wrong with the worker"
- Workflow run timeout: "this entire workflow should never run longer than X, something is fundamentally broken"
- Heartbeat timeouts: detecting stuck activities
- Rule of thumb: if a timeout firing means "retry or fail," it's the right tool. If it means "do something different," use a timer instead.

## Monitoring the Right Way
- Instead of inferring system health from timeout failures, use purpose-built metrics
  - `temporal_workflow_task_schedule_to_start_latency` — are workers keeping up?
  - `temporal_activity_schedule_to_start_latency` — are activity workers keeping up?
  - `approximate_backlog_count` — is the queue growing?
  - `temporal_workflow_failed` counter — are workflows actually failing?
- Enhanced Describe Task Queue API for real-time polling
- These metrics tell you when to scale workers, without polluting your workflow logic

## Conclusion
- Timeouts = safety nets for infrastructure failures
- Timers = business logic for time-based decisions
- Keeping these separate gives you better observability, cleaner code, and fewer false alarms
- Your monitoring strategy should use queue metrics, not timeout failures, to drive scaling decisions


