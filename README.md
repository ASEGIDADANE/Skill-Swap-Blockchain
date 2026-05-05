# Campus Skill Swap

A small Solidity learning project for the blockchain laboratory assignment. Students list skills they can teach and skills they want to learn; listings are stored on-chain.

## Team

| Name | GitHub | Role |
|------|--------|------|
| Member 1 | `@username` | Repo setup, contract shell |
| Member 2 | `@username` | Structs & events |
| Member 3 | `@username` | `createListing` |
| Member 4 | `@username` | `getListing`, `cancelListing` |
| Member 5 | `@username` | Docs & screenshots |

> Update this table with real names and GitHub handles.

## Course

- **Platform:** Alchemy University / Cyfrin Updraft (choose one)
- **Course URL:** https://www.alchemy.com/university/courses/solidity
- **Progress:** See `docs/screenshots/` (one folder per member)

## Repository layout

```
├── contracts/          # Project Solidity (SkillSwap.sol)
├── course-materials/   # Lesson notes & course example code
├── docs/
│   ├── design.md       # Contract design (v1 scope)
│   └── screenshots/    # Course completion & deploy proofs
└── scripts/            # Deploy scripts (added later)
```

## Getting started

1. Clone the repository.
2. Open `contracts/SkillSwap.sol` in [Remix](https://remix.ethereum.org/).
3. Compile with Solidity **0.8.20** or newer.
4. Each member: add screenshots under `docs/screenshots/<your-name>/`.

## Contract (planned v1)

- `createListing(skillOffered, skillWanted)`
- `getListing(listingId)`
- `cancelListing(listingId)` — listing owner only

Details: [docs/design.md](docs/design.md)

## Deployments

| Network | Address | Explorer |
|---------|---------|----------|
| Sepolia | _TBD_ | _TBD_ |

## License

MIT
# Skill-Swap-Blockchain
