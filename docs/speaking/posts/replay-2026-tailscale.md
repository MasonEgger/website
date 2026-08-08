---
date: 2026-05-06
authors:
    - masonegger
categories:
    - Workshop
---

# Securing AI Applications with Tailscale and Temporal

A joint Tailscale and Temporal workshop from Replay 2026, co-presented with Kartik Bharath of Tailscale.
Attendees built a durable AI weather agent and put the whole thing on a tailnet.

<!-- more -->

## Introduction

AI agents are network clients with an unusually large blast radius.
They call out to model providers, they call your internal services, and every one of those hops needs credentials, encryption, and something watching it.
The usual answer is a pile of port forwarding, secrets scattered across machines, and an API key sitting on every box that needs one.

This workshop builds an agent the other way.
Temporal orchestrates an agentic loop where an LLM chains tool calls on its own, and every one of those calls survives a crash because the loop is a Workflow.
Tailscale handles the networking, so each attendee's VM joins a shared tailnet with no port forwarding and no exposed services.
Aperture proxies the LLM calls with rate limiting and a shared key, which means nobody's VM ever holds an OpenAI credential.

Everyone's Workflows ran against one shared Temporal server, so the Web UI showed the whole room's progress at once.

## What Attendees Built

Four exercises, fifteen minutes apiece:

1. **Hello Tailnet.** Run a geo-IP Workflow against the shared Temporal server over Tailscale.
1. **Explore Tailscale.** Walk the network, understand what Aperture is doing, and run a Go worker over `tsnet`.
1. **Weather Agent.** Build the durable AI agent, with LLM calls routed through Aperture.
1. **Metrics Watcher.** Schedule a Go `tsnet` worker to pull metrics off a tailnet node and summarize them with Claude.

## Delivery

This Workshop was given at:

* Replay 2026, May 6, 2026, Moscone South, San Francisco

## Course Materials

The repository is a community asset, so you can run this yourself.
It ships instructor walkthroughs with and without Instruqt, plus the infrastructure setup and architecture notes.

* [Workshop repository](https://github.com/temporal-community/workshop-tailscale-replay-2026)
* [`temporal-ts-net`, the Temporal CLI extension for Tailscale](https://github.com/temporal-community/temporal-ts-net)
* [All Replay 2026 workshop assets](https://temporal.io/replay/2026/workshop-assets)
