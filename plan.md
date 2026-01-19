# Blog Split Plan: 014-software-engineering-evolution.md

## Problem

Feedback on the original post:
1. Takes too long to get to the controversial bits
2. Hidden Figures section drags after the logarithm story
3. Should press harder on "it's not the code you write, it's knowing what code to write"
4. The powerful QA/tests statement is buried in a footnote
5. Too long, too many points—could easily be two blogs

## Solution: Split into Two Posts

---

## Blog 1: "The Next Great Abstraction"
**File:** `014-1-the-next-great-abstraction.md`

**Thesis:** AI is the next major abstraction layer in computing, filling a vacuum we created by chasing complexity instead of simplicity.

**Sections:**
1. Opening: A Gem at an Estate Sale (logarithm book - keep as-is)
2. Dorothy Vaughan and the IBM (**cut by 50%**)
3. The Crucial Element (expertise > implementation)
4. Witnessing Abstraction (how we lost our way with complexity)
5. Nature Abhors a Vacuum (the simplicity vacuum AI fills)
6. So How Is This Different? (why AI isn't like CASE tools, 4GLs, etc.)
7. Closing: bridge to Part 2

**Key Cuts:**
- Condense Dorothy Vaughan section significantly
- Trim some annotations (they slow the pace)
- Cut IBM 7090 specs and extended "Computers" explanation

**Target Length:** ~2,000-2,500 words (down from ~3,500)

---

## Blog 2: "Code is Cheap (Knowing What to Write Isn't)"
**File:** `014-2-code-is-cheap.md`

**Thesis:** The value was never the code—it's knowing what to write. AI without your guidance is worthless; AI with your engineering judgment is a superpower.

**Sections:**
1. **NEW Opening: The Consultant Joke** - "$5 to push the button. $495 to know which button to push."
2. Code is Cheap (AI is faster, who cares, value is the product)
3. **PROMOTED: The Hallucinations/QA Section** - "Get your shit together" becomes a headline
4. The Math is Obvious (day vs. 45 seconds + review)
5. The Engineering Debate—Resolved (craft → real engineering)
6. Proof: The Ghostty Example (Mitchell Hashimoto tweet)
7. A Fork in the Road (tightened, keep predictions)
8. The Path Forward (practical guidance)
9. Closing: link to Claude Code blog

**Key Changes from Original:**
- Consultant joke opens the post (crystallizes the thesis)
- QA/tests point promoted from footnote to main section
- "Get your shit together" hits hard, not parenthetical
- More urgent, direct tone than Part 1

**Target Length:** ~2,000-2,500 words

---

## Publishing Schedule

| Post | Title | Date |
|------|-------|------|
| 1 | The Next Great Abstraction | 2026-01-01 |
| 2 | Code is Cheap | 2026-01-08 |

---

## Execution Checklist

- [ ] Write Blog 1 draft from outline
- [ ] Cut Dorothy Vaughan section by 50%
- [ ] Trim annotations throughout
- [ ] Write Blog 2 draft from outline
- [ ] Move consultant joke to opening
- [ ] Promote QA/tests section from footnote
- [ ] Add cross-links between posts
- [ ] Review both for consistent voice
- [ ] Run `just check` before committing
- [ ] Archive or delete original 014 post

---

## Files

- Original: `014-software-engineering-evolution.md`
- Outline 1: `014-1-the-next-great-abstraction.md`
- Outline 2: `014-2-code-is-cheap.md`
- This plan: `plan.md`
