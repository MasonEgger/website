---
title: How To Use Claude Code with the BPE Workflow [Quickstart]
description: Get productive with Claude Code using the Brainstorm-Plan-Execute loop
date: 2026-02-17
categories:
    - AI
    - Productivity
    - Software Engineering
authors:
    - masonegger
---

This quickstart guide gets you up and running with the Brainstorm-Plan-Execute (BPE) workflow for Claude Code.
You'll install custom commands that structure your AI-assisted development into repeatable, reviewable steps.

<!-- more -->

## Introduction

The BPE workflow breaks down AI-assisted development into three phases: **Brainstorm** your idea into a specification, **Plan** the implementation with generated prompts, and **Execute** each step with manual review. This approach produces maintainable code you actually understand.

For the full context behind this workflow, including Core Principles and detailed explanations, see [How I Actually Use the Damn Thing](/blog/posts/016-claude-code/).

## Prerequisites

Before starting, ensure you have:

- [Claude Code](https://code.claude.com/docs/en/overview) installed via the native installer
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) installed
- Git installed
- A code project to work on

## Step 1 — Installing the BPE Workflow Commands

The BPE commands live in a `homedir` repository that uses Ansible for installation. Clone the repository and run the playbook:

```bash
cd ~
git clone https://github.com/MasonEgger/homedir.git
cd homedir
ansible-playbook ansible/setup.yml --tags claude
```

This installs:

- `~/.claude/CLAUDE.md` — Global configuration with development principles
- `~/.claude/commands/` — Custom commands including the BPE workflow
- `~/.claude/skills/` — Conditional context loading for languages like Python

## Step 2 — Initializing Your Project

Navigate to your project directory and run `/init` in Claude Code:

```bash
cd /path/to/your/project
claude
```

Inside Claude Code:

```
/init
```

This scans your project and creates a `CLAUDE.md` file with project-specific context. Review the generated file and commit it:

```bash
git add CLAUDE.md
git commit -m "Add project CLAUDE.md for AI context"
```

## Step 3 — Brainstorming Your Feature

Start a brainstorming session by running the command with your idea:

```
/app-dev:brainstorm Build a CLI tool that converts markdown files to PDF
```

Claude Code will ask you questions one at a time to refine your idea. Answer each question thoughtfully. When finished, it creates `spec.md` with your specification.

**Review `spec.md` manually.** Fix any errors or misunderstandings before proceeding. This file is the foundation for everything that follows.

## Step 4 — Creating a Plan

Clear your context and generate the implementation plan:

```
/clear
/app-dev:plan
```

This reads `spec.md` and creates two files:

- `plan.md` — Step-by-step prompts for implementation, following Test-Driven Development
- `todo.md` — Checklist mirroring the plan to track progress

**Review `plan.md` manually.** Verify the prompts make sense and follow your preferred patterns. Check that file paths are correct and test scenarios are appropriate.

## Step 5 — Executing the Plan

Clear your context and start executing:

```
/clear
/app-dev:execute-plan
```

Claude Code reads `todo.md` to find the next unchecked item, loads the corresponding prompt from `plan.md`, and implements that step using TDD.

After each step completes:

1. Review the generated code
2. Manually run tests to verify they pass
3. Commit the changes
4. Run `/clear` to reset context
5. Run `/app-dev:execute-plan` again for the next step

Repeat until `todo.md` is complete.

## Conclusion

You now have a structured workflow for AI-assisted development:

1. **Brainstorm** creates `spec.md` from your idea
2. **Plan** generates `plan.md` and `todo.md` with implementation prompts
3. **Execute** implements one step at a time with manual review between each

For the complete picture—including Core Principles like "This is MY Code, Not AI Code" and detailed explanations of Skills, context management, and more—read the full blog post: [How I Actually Use the Damn Thing](/blog/posts/016-claude-code/).

*[CC]: Claude Code
*[BPE]: Brainstorm, Plan, Execute
