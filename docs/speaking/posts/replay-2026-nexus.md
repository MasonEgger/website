---
date: 2026-05-05
authors:
    - masonegger
categories:
    - Workshop
---

# Introduction to Temporal Nexus

Two teams, two Namespaces, and every painful workaround people use to get a call across that wall.
A three and a half hour hands-on workshop from Replay 2026 on doing it properly.

<!-- more -->

## Introduction

Namespace isolation is a feature until you need something from the team on the other side of it.
Then you pick a workaround.
Child Workflows only work inside a single Namespace and leak the callee's implementation details to the caller.
Activities that wrap an HTTP or mTLS call mean boilerplate, over-permissioned credentials, and no built-in observability.
Bespoke gateway infrastructure isn't durable and is miserable to debug.

Temporal Nexus replaces all three.
A team exposes a capability behind a typed Service contract, publishes it as a Nexus Endpoint, and any caller Workflow invokes it across the Namespace boundary peer to peer, with the durability and observability you already trust.

The workshop follows one story the whole way through: a payments monolith pulled apart into Namespace-isolated Payments and Compliance services, joined by a Nexus Endpoint.
Attendees run the monolith first so the seam is something they can feel, then cut it.

## What Attendees Built

The hands-on Instruqt track walks through:

1. Run the monolith and find the seam
1. Define the Service contract
1. Implement a synchronous Operation handler
1. Swap the caller from `execute_activity` to `execute_operation`
1. Move to asynchronous, Workflow-backed Operations
1. Send Updates through the boundary
1. Handle Operation lifecycle and cancellation
1. Call the same contract from a different language
1. Where to take it next

The payoff moment is small and worth waiting for.
A cross-Namespace call shows up in the caller's Workflow History as two events, and the whole abstraction clicks.

## Delivery

This Workshop was given at:

* Replay 2026, May 5, 2026, Moscone South, San Francisco

## Course Materials

* [Slides and source code](https://github.com/temporalio/workshop-nexus-intro-code)
* [All Replay 2026 workshop assets](https://temporal.io/replay/2026/workshop-assets)
