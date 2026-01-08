---
title: How To Debug Blocking Calls in Temporal Async Activities with Python 3.14
description: Learn how to identify and debug blocking calls in Temporal async activities using Python 3.14's asyncio introspection tools
date: 2025-11-10
categories:
    - Python
    - Temporal
    - Debugging
authors:
    - masonegger
---

# How To Debug Blocking Calls in Temporal Async Activities with Python 3.14

Async activities that use blocking calls will freeze your entire event loop, causing missed heartbeats, timeouts, and performance issues. Python 3.14's new asyncio introspection makes these problems immediately visible. In this tutorial you'll use these tools to identify blocking calls in Temporal activities.

<!-- more -->

## The Problem

You've written async activities for your Temporal workflows, but something's wrong. Activities are timing out, heartbeats are being missed, and your worker seems to freeze. The culprit? Blocking calls hiding in your async code.

The classic mistake looks innocent enough:

```python
@activity.defn
async def get_ip() -> str:
    time.sleep(5)  # Seems harmless... but BLOCKS the entire event loop!
    async with httpx.AsyncClient() as client:
        response = await client.get("https://icanhazip.com")
        return response.text.strip()
```

That `time.sleep(5)` doesn't just pause your activity—it freezes every task on the event loop. No heartbeats. No other activities. Nothing. Your worker is stuck.

Before Python 3.14, finding these blocking calls meant hours of debugging, adding print statements, and guessing. Python 3.14 changes everything with built-in asyncio introspection that shows you exactly what's blocking and where.

## What You'll Learn

In this tutorial, you'll:

* Set up a demo Temporal application that demonstrates blocking behavior
* Use Python 3.14's `asyncio pstree` and `asyncio ps` commands to visualize blocking calls
* Understand how to read asyncio introspection output
* Learn the difference between blocking and non-blocking async code
* Apply these debugging techniques to your own Temporal applications

## Prerequisites

Before starting this tutorial, ensure you have:

* **Python 3.14 or higher** - The asyncio introspection features are only available in Python 3.14+. Verify with `python --version`
* **uv package manager** installed - [Installation instructions](https://docs.astral.sh/uv/)
* **Temporal CLI** installed and a local Temporal server running - [Installation guide](https://docs.temporal.io/cli#install)
* **sudo access** - On macOS, the asyncio introspection tools require elevated permissions
* Basic familiarity with Temporal [Workflows](https://docs.temporal.io/develop/python/core-application#develop-workflows), [Activities](https://docs.temporal.io/develop/python/core-application#develop-activities), and async/await in Python

!!! warning "Python 3.14 is Required"
    This tutorial will **not work** with earlier Python versions. The asyncio introspection features (`python -m asyncio pstree` and `python -m asyncio ps`) were introduced in Python 3.14.

## Step 1 - Setting Up the Demo Application

First, clone the demo repository that contains a Temporal application specifically designed to demonstrate blocking behavior:

```bash
git clone https://github.com/MasonEgger/temporal-async-debug.git
cd temporal-async-debug
```

This repository contains a simple Temporal application with:

* **activities.py** - Activities that fetch IP address and location data
* **workflow.py** - A workflow that executes these activities
* **worker.py** - A Temporal worker that processes workflows
* **app.py** - A Flask web interface for triggering workflows
* **shared.py** - Data models for workflow inputs and outputs

Install the project dependencies using uv:

```bash
uv sync
```

The demo application uses **async-safe httpx** by default, which properly yields to the event loop. However, it includes an optional blocking mode that adds `time.sleep()` calls to demonstrate the problem.

## Step 2 - Starting the Temporal Server

In a dedicated terminal window, start your local Temporal development server:

```bash
temporal server start-dev
```

You should see output indicating the server is running on `localhost:7233`. Leave this terminal running.

## Step 3 - Starting the Worker

In a new terminal window, start the Temporal worker:

```bash
uv run worker.py
```

You'll see output similar to:

```
======================================================================
  Temporal Worker - Python 3.14 Async Blocking Demo
======================================================================

This worker demonstrates async event loop blocking detection.

Worker PID: 59027 (for asyncio introspection)

Activities use async-safe httpx by default (✅ CORRECT)

To demonstrate blocking:
  - Set 'Activity Block Duration' to 3+ seconds in the web UI
  - This adds time.sleep() which BLOCKS the event loop

TO DEBUG WITH PYTHON 3.14:
  1. Note the PID above
  2. Submit a workflow with block_seconds > 0
  3. Run: sudo python -m asyncio pstree [PID]
  4. You'll see tasks NOT YIELDING during the blocking sleep

----------------------------------------------------------------------

✅ Worker started - Ready to process workflows
```

**Important**: Note the Worker PID shown in the output (in this example, 59027). You'll need this for debugging.

Leave this terminal running.

## Step 4 - Starting the Web Application

In a third terminal window, start the Flask web application:

```bash
uv run app.py
```

The application will start on `http://localhost:8000`. Open this URL in your browser.

You'll see a simple web form with:

* **Name field** - Enter your name
* **Workflow Sleep Duration** - Non-blocking sleep using `asyncio.sleep()` (max 10 seconds)
* **Activity Block Duration** - Blocking sleep using `time.sleep()` (no limit)

## Step 5 - Observing Normal (Non-Blocking) Behavior

First, let's see what normal, properly-functioning async code looks like.

In the web interface:

1. Enter your name
2. Leave **Workflow Sleep Duration** at 0
3. Leave **Activity Block Duration** at 0
4. Click **Get Greeting**

The workflow executes quickly. The activities use `httpx`, which is async-safe and properly yields to the event loop.

Now, in a fourth terminal window, run the asyncio introspection while the worker is idle:

```bash
sudo python -m asyncio ps [PID]
```

Replace `[PID]` with your worker's PID from Step 3.

You'll see a table showing all running tasks. With no workflows executing, you'll see tasks waiting on various operations:

```
tid        task id              task name            coroutine stack                                    awaiter chain
--------------------------------------------------------------------------------------------------------------------
43596441   0x106d5e030          Task-1               Worker._run -> _RootPlugin.run_worker -> ...
43596441   0x106d5fc50          Task-2               Event.wait -> Worker._run.<locals>.raise...       _wait -> wait
43596441   0x1070adb80          Task-3               _wait -> wait -> _ActivityWorker.run              _wait -> wait
...
```

These tasks are properly waiting on async operations, allowing the event loop to process other work.

## Step 6 - Triggering Blocking Behavior

Now let's see what blocking looks like.

In the web interface:

1. Enter your name
2. Leave **Workflow Sleep Duration** at 0
3. Set **Activity Block Duration** to **30** (30 seconds gives you plenty of time)
4. Click **Get Greeting**

The workflow will start executing. Behind the scenes, the activities now include:

```python
if input.block_seconds > 0:
    activity.logger.info(f"🔴 BLOCKING event loop with time.sleep({input.block_seconds})")
    time.sleep(input.block_seconds)  # BLOCKS the entire event loop!
```

## Step 7 - Capturing the Blocking Behavior

**Immediately** after clicking **Get Greeting**, run the introspection command in your fourth terminal:

```bash
sudo python -m asyncio ps [PID] > blocking-output.txt
```

This saves the output to a file for analysis. Let's examine what Python 3.14 reveals.

Open `blocking-output.txt` and look for the activity handler task. You'll see something like:

```
tid        task id              task name            coroutine stack                                    awaiter chain                                      awaiter name    awaiter id
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
43596441   0x1075bde00          Task-11              _ActivityWorker._handle_start_activity_task                                                                           0x0
```

**This is the smoking gun.** Notice:

* **Empty awaiter chain** - The activity task has no chain of operations it's waiting on
* **awaiter id is 0x0** - It's not connected to any other async operation
* **No httpx operations shown** - Even though the code uses httpx, you can't see it because `time.sleep()` blocks before httpx runs

Compare this to a properly functioning activity (with `block_seconds=0`), and you'd see:

```
Task-11    _ActivityWorker._handle_start_activity_task    httpx.AsyncClient.request -> socket.recv    [some task id]
```

The absence of any awaiter chain is proof that the code is blocking synchronously.

## Step 8 - Visualizing with pstree

For a different view, use the `pstree` command to see a hierarchical tree of tasks:

```bash
sudo python -m asyncio pstree [PID]
```

You'll see output like:

```
└── (T) Task-1
    └──  main /path/to/worker.py:54
        └──  Worker.run /path/to/temporalio/worker/_worker.py:693
            └──  _RootPlugin.run_worker ...
                └──  Worker._run ...
                    └── (T) Task-5
                        └──  wait /path/to/asyncio/tasks.py:432
                            ├── (T) Task-3
                            │   └──  _ActivityWorker.run ...
                            │       └──  wait ...
                            │           └── (T) Task-9
                            │               └──  Worker.poll_activity_task
                            └── (T) Task-4
                                └──  _WorkflowWorker.run ...
└── (T) Task-8
    └──  _ActivityWorker._handle_start_activity_task
```

See how Task-8 (the activity handler) appears as a separate branch with nothing below it? It's disconnected from the async operation chain because `time.sleep()` has blocked the event loop.

In a properly functioning system, you'd see Task-8 showing its full async stack including the httpx operations.

## Step 9 - Understanding the Impact

Let's look at what actually happens in the code. Open `activities.py`:

```python
@activity.defn
async def get_ip(input: ActivityInput) -> str:
    """Get IP address using async httpx."""
    if input.block_seconds > 0:
        activity.logger.info(f"🔴 BLOCKING event loop with time.sleep({input.block_seconds})")
        time.sleep(input.block_seconds)  # BLOCKS the entire event loop!
        activity.logger.info(f"🔴 Event loop was blocked for {input.block_seconds} seconds")

    activity.logger.info("✅ Getting IP address using async httpx")
    async with httpx.AsyncClient() as client:
        response = await client.get("https://icanhazip.com", timeout=10.0)
        response.raise_for_status()
        result = response.text.strip()

    activity.logger.info(f"✅ Got IP: {result}")
    return result
```

When `block_seconds > 0`, the `time.sleep()` call:

* **Blocks the entire thread** - No other tasks on the event loop can run
* **Prevents heartbeats** - Temporal can't send heartbeat signals
* **Causes timeouts** - Activities appear frozen from Temporal's perspective
* **Hides in plain sight** - Without introspection tools, it's invisible

The proper async version uses `asyncio.sleep()` instead, which yields control back to the event loop:

```python
await asyncio.sleep(input.block_seconds)  # Yields to event loop - CORRECT!
```

## Step 10 - The Solution

Now that you can identify blocking calls, here's how to fix them:

### Use Async-Safe Libraries

| ❌ Blocking | ✅ Async-Safe |
|-------------|---------------|
| `time.sleep()` | `asyncio.sleep()` |
| `requests` | `httpx` or `aiohttp` |
| `open()` | `aiofiles.open()` |
| `psycopg2` | `asyncpg` |

### When to Use Async Activities

According to [Temporal's documentation](https://docs.temporal.io/develop/python/python-sdk-sync-vs-async):

> "By default, Activities should be synchronous rather than asynchronous."

Only use async activities when you:

* Need concurrent I/O operations within a single activity
* Use async-native libraries (like httpx, aiohttp)
* Understand async/await patterns thoroughly

If you're not sure, **use sync activities**. They're simpler and less prone to these blocking issues.

## Conclusion

Python 3.14's asyncio introspection turns hours of debugging blocking calls into minutes. With `python -m asyncio ps` and `python -m asyncio pstree`, you can:

* Immediately identify which tasks are blocking
* See exactly where the blocking occurs
* Understand the impact on your event loop
* Verify your fixes work correctly

What previously required guesswork and print statement debugging is now visible at a glance.

**Key takeaways:**

1. Blocking calls in async code freeze the entire event loop
2. Python 3.14's introspection reveals blocking by showing empty awaiter chains
3. Use async-safe libraries (httpx, asyncio.sleep, aiofiles, etc.)
4. When in doubt, use sync activities instead of async
5. Always test with introspection tools to verify proper async behavior

The next time you encounter mysterious timeouts or missed heartbeats in your Temporal applications, reach for Python 3.14's asyncio introspection. It will show you exactly what's wrong.

## Further Reading

* [Temporal Python SDK: Sync vs Async](https://docs.temporal.io/develop/python/python-sdk-sync-vs-async)
* [Python 3.14 Asyncio Changes](https://docs.python.org/3.14/library/asyncio.html)
* [Demo Application Repository](https://github.com/MasonEgger/temporal-async-debug)

---

_Like this tutorial? Found it helpful? [Buy me a coffee](https://venmo.com/u/masonegger) to support more content like this._
