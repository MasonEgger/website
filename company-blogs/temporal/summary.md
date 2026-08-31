Niv Keidan asked about two monitoring needs:
  1. Detecting queues that aren't being consumed fast enough (to know when to scale workers up)
  2. Monitoring failed workflows per type

  Tihomir Surdilovic responded with specific solutions:

  For queue consumption monitoring:
  - Worker-side metrics: temporal_workflow_task_schedule_to_start_latency and
  temporal_activity_schedule_to_start_latency
  - The enhanced Describe Task Queue API for polling task queue state
  - Server-side metric: task_schedule_to_start_latency_bucket (filterable by task_type)
  - Server-reported approximate_backlog_count metric (filterable by task queue name)

  For failed workflow monitoring:
  - Use the temporal_workflow_failed counter from worker metrics
  - Important caveat: if tracking unexpected failures, avoid explicitly raising ApplicationFailure from workflow
   code (links to a features repo issue discussing this pattern)

  ---
  Timers vs Timeouts for Workflow Timing

  This thread is really about observability of queue health, but it touches on a broader principle: timers
  inside a workflow are a better mechanism for controlling workflow timing than relying on timeouts. Here's why:

  Timeouts are blunt failure detectors. A workflow or activity timeout says "if this doesn't complete in X time,
   fail it." They conflate slowness with failure. If a task queue backs up (exactly Niv's concern), timeouts
  start firing — but the work isn't broken, it's just waiting for a worker. You get false failures that mask the
   real problem (insufficient worker capacity).

  Timers are explicit, deterministic workflow logic. A workflow.sleep() or timer in workflow code is a
  first-class event in the workflow history. This means:

  - Visibility: Timers show up in the event history — you can see exactly when a workflow is waiting and for how
   long. Timeouts only surface when they fire (as failures).
  - Control flow: Timers let you branch logic ("if no response in 30 minutes, send a reminder; if no response in
   24 hours, escalate"). Timeouts just kill the execution.
  - Deterministic replay: Timers are part of the workflow's deterministic state. They survive replays correctly.
   Using timeouts to drive business logic creates implicit, harder-to-reason-about behavior.
  - Separation of concerns: Timeouts should guard against infrastructure failures (worker crash, network
  partition). Timers should encode business-level timing requirements. Mixing these up makes both harder to
  monitor — which is exactly the problem Niv was hitting.

  In short: use timeouts as safety nets for infrastructure failures, and use timers to model time-based business
   logic. Monitor queue health with the schedule-to-start latency metrics Tihomir recommended rather than
  inferring it from timeout failures