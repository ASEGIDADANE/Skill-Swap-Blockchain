# Lesson 01 — Solidity basics

**Course:** Alchemy University — Learn Solidity  
**Link:** https://www.alchemy.com/university/courses/solidity  
**Author:** Asegid (update with your name)

## Topics covered

- Contract structure (`pragma`, `contract`)
- State variables and types (`uint256`, `address`, `string`, `bool`)
- Functions: `public`, `external`, `view`, `pure`
- `msg.sender` — caller of the transaction

## Key takeaways

1. Solidity **0.8+** checks overflow automatically.
2. `calldata` is cheaper than `memory` for external string parameters.
3. `require(condition, "message")` reverts and refunds unused gas.

## Connection to SkillSwap

- `createListing` uses `msg.sender` as listing `owner`.
- Empty strings are rejected with `require` and a clear error message.

## Screenshot

Add: `docs/screenshots/asegid/course-lesson-01.png`
