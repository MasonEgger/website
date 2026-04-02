---
date: 2025-06-27
authors:
    - masonegger
categories:
    - Conference Talk
---

# Using Temporal to Coordinate Your Automations (and Humans!)

A look at how Temporal can be used to coordinate complex automations and human-in-the-loop workflows on modern platforms.

<!-- more -->

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/rpGra-zdX3Y" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

This talk was given at:

* [PlatformCon 2025](https://www.youtube.com/watch?v=rpGra-zdX3Y)

## Workshop Materials

The companion workshop repository is available at [temporal-community/workshop-cicd-k8s-deployment](https://github.com/temporal-community/workshop-cicd-k8s-deployment). It walks through building a reliable CI/CD pipeline with Temporal, progressing from basic concepts to production-grade patterns. The workshop is split across four branches, each building on the last:

* **part-1-docker-pipeline** — Core Temporal concepts with a basic container build workflow featuring retry logic and error handling
* **part-2-human-in-the-loop** — Adds Kubernetes deployment with approval gates, blending automation with human decision-making
* **part-3-durable-timers** — Production patterns including validation windows and automatic rollback using durable timers
* **part-4-polyglot-activities** — Multi-language worker coordination, combining Go workflows with Python and TypeScript activities

To explore a specific part, check out the corresponding branch. Each branch has its own detailed README with prerequisites and instructions.
