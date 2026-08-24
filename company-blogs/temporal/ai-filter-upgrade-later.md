# AI filter upgrade (explore later)

Realization from the AI-Apps-Temporal edit pass (2026-07-08). Parked for a dedicated pass; not acting on it now.

## The realization

What makes writing read as AI is density and clustering, not the presence of any single construction.
LLMs were trained on human writing, so the "AI tells" (`not only X, but Y`, `crucial`, and the rest) are real human phrasings that real people, including Mason, use on purpose.
A few of them in a piece with strong voice markers (contractions, fragments, profanity, specific detail, jokes, direct quotes) read as a human who writes with some flourish.
The same constructions at high density, with no voice markers and a marketing sheen, read as a model.

## Why the current approach over-fires

The current writing-style enforcement is basically binary presence-detection: flag every instance of a banned phrase or word.
That over-fires on human writing that happens to use one, which is exactly what happened here (a single "not only X, but Y" and one "crucial" in a passage that is unmistakably Mason's voice).
The rule is easier to state as a hard ban, but the honest target is "watch the density and watch it clustering with the other tells," which a binary rule can't express.

## Ideas to explore

- Downgrade the `not only X, but Y` hard-ban to a soft flag. The real target is density plus co-occurrence with other tells, not the lone instance.
- Same treatment for the banned-vocabulary list (already captured as a preference: banned words are soft flags, not auto-fixes).
- A scoring heuristic: count tells per N words, and discount the score when voice markers are present (contractions, fragments, profanity, concrete specifics, quotes).
- Decide where this lives: a smarter Vale ruleset, a review-agent heuristic, or just a revised rule in writing-style.md that describes density instead of presence.

## Open question

How do you measure "voice markers" cheaply enough to be worth it, versus just trusting the author to make the call on a flagged instance?
