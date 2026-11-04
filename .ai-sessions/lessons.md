# Lessons Learned

## Recent
<!-- 10 most recent lessons, newest first -->
- Raise a finding once. Mason ruled against links in round one by silence and against them in round two out loud ("Get over this"). A ruled finding is decided, not pending (2026-11-04)
- When Mason says he removed a name for ambiguity, grep for it before agreeing. He believed Paxton was out of the Cornyn sentence; Paxton was still there (2026-11-04)
- Web-verify every claim in a draft that postdates the model's knowledge before critiquing it. The election headline numbers were right, but three supporting "receipts" were wrong: Texas gas was $3.60 against a 2022 record near $4.65, TIPRO had upstream oil jobs up on the year, and the GOP sweep postdates a 1992 birth (2026-11-04)
- One-word rulings against a multi-item finding are ambiguous. "Good" on a fact row and "Leave it alone" against a seven-item mechanics bullet both needed a guess plus a flag. Number findings so Mason can rule by number, and ask which items a blanket ruling covers (2026-11-04)
- When Mason will edit on another machine, put suggestions and open decisions inside the draft as `<CLAUDE_HELP>` blocks, not in chat. He asked whether everything he needed was in tags, and three items were not (2026-11-04)
- Pin a dated hedge to publication, not drafting. "The current (as of Nov. 1, 2026) legislation" rotted before the post was committed; "as of this post" does not (2026-11-04)
- This site's feed is not in `python/planet` `config/config.ini`, so a category tag on a post does not syndicate it anywhere; the Python category is a site-only concern (2026-11-04)
- Writing up someone else's talk invites invented experiential claims. "That turned out to be the best part", "spent an hour", "practices we've actually tested" all read as harmless color and none were sourced. Every subjective statement about how an event went needs a citation or it is fiction (2026-08-07)
- Vale catches AI vocabulary, not fabrication. The AI-tell rules returned zero on prose carrying three invented claims; only reading against the voice profile caught them. Run both, and never treat a clean lint as a fact-check (2026-08-07)
- Baseline a linter against the author's own published work before treating its output as a verdict. `docs/speaking/posts/` falls outside the blog glob in `~/.vale.ini`, so it gets the strict technical profile, and Mason's own posts fail it harder than anything written for this branch (2026-08-07)

## Site Structure
- The mkdocs-material blog plugin derives a post's URL from its title, so any retitle silently breaks the old link. Pin `slug:` in the post frontmatter first; `material/plugins/blog/plugin.py` resolves `post.config.slug or self._slugify_post(post)` (2026-08-07)
- Three blog plugin instances (blog, tutorials, speaking) each set `post_url_format: "{slug}"`, so no section carries dates in its URLs. Post `date:` only affects archive ordering (2026-08-07)
- Relative `.md` links between posts resolve correctly to slug URLs at build time; link to the source filename, not the slug (2026-08-07)
- Renaming a post file is URL-safe here but retitling is not, since the slug comes from the title. `synth-data copy.md` to `devrel-show.md` moved nothing (2026-08-07)
- The blog plugin has no `categories_allowed` restriction in this config, so a new category costs nothing but should still be added deliberately (2026-08-07)
- `just link-check` catches factual errors, not just dead links. A 301 revealed that `MasonEgger-Edu/python-102` was renamed rather than forked, which invalidated a "current vs old materials" split already written into the post (2026-08-07)

## Content
- Speaking posts follow a fixed shape: frontmatter, H1, one or two sentence hook, `<!-- more -->`, optional embed, body, "This talk was given at:" list, materials links (2026-08-07)
- The `presentations` repo's per-deck `spec.md` files carry better framing prose than the decks; they are the right source when writing a talk up after the fact (2026-08-07)
- Speaking post dates are the most recent delivery, not the first. `ci-docs.md` and `docs-devs-love.md` both date to their latest venue, which is what puts them in the right place in the archive (2026-08-07)
- Do not promote a CFP's Additional Notes into a delivery writeup. "Probably going to dress Texan" is a plan, not a record of what happened on stage (2026-08-07)

## Writing
- One sentence per line in new committed prose, per the global rules. Existing posts are column-wrapped; leave their wrapping alone when editing to keep diffs readable (2026-08-07)

## Voice Work
- Do not write the joke. The voice profile reserves pop-culture and humor slots for Mason to cast; guessing produced "I dressed for it" from an aspirational CFP note about a hat he never wore (2026-08-07)
- Critique mode on a blog is a fact-check first. The headline claims in the election post were correct and the color claims were not; the rule "bombastic opinions, accurate facts" fails on the color (2026-11-04)
- Mason distinguishes "Do this" from "Suggest" deliberately. Apply the first, draft the second inside tags, and never fold a suggestion into the text silently (2026-11-04)
