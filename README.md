# Campus Skill Swap

A small Solidity learning project for the blockchain laboratory assignment. Students list skills they can teach and skills they want to learn; listings are stored on-chain.

**Repository:** https://github.com/ASEGIDADANE/Skill-Swap-Blockchain

## Team

| Name | GitHub | Role |
|------|--------|------|
| Member 1 | `@ASEGIDADANE` | Repo setup, contract |
| Member 2 | `@username` | Structs & events |
| Member 3 | `@username` | `createListing` |
| Member 4 | `@username` | `getListing`, `cancelListing` |
| Member 5 | `@username` | Docs & screenshots |

> Update this table with all member names and GitHub handles.

## Course

- **Platform:** Alchemy University (or Cyfrin Updraft — pick one)
- **Course URL:** https://www.alchemy.com/university/courses/solidity
- **Progress:** `docs/screenshots/<your-name>/`

## Repository layout

```
├── contracts/SkillSwap.sol   # Main contract (v1 complete)
├── course-materials/         # Notes, examples, links
├── docs/
│   ├── design.md
│   ├── testing.md            # Remix test checklist
│   └── screenshots/
└── scripts/                  # Deploy scripts (later)
```

## Contract (v1)

| Function | Description |
|----------|-------------|
| `createListing(skillOffered, skillWanted)` | Create listing; returns new id |
| `getListing(id)` | Read owner, skills, active flag |
| `cancelListing(id)` | Deactivate listing (owner only) |

Design details: [docs/design.md](docs/design.md)

## Test in Remix

1. Open [Remix](https://remix.ethereum.org/) and add `SkillSwap.sol`.
2. Compile with **Solidity 0.8.20+**.
3. Deploy on **Remix VM (London)**.
4. Call `createListing("Solidity", "React")` → check `listingCount`.
5. Call `getListing(0)` → verify returned fields.
6. Call `cancelListing(0)` → `getListing(0)` should show `active: false`.

Full checklist: [docs/testing.md](docs/testing.md)

## Deployments

| Network | Address | Explorer |
|---------|---------|----------|
| Sepolia | _Deploy and paste address here_ | https://sepolia.etherscan.io/address/... |

## Implementation status

| Phase | Status |
|-------|--------|
| 0 — Repo setup | Done |
| 1 — Course materials & screenshots | Started — add PNGs per member |
| 2 — State, events, modifier | Done |
| 3 — `createListing`, `getListing`, `cancelListing` | Done |
| 4 — Remix testing | Use [docs/testing.md](docs/testing.md) |
| 5 — Sepolia deploy | Guide: [docs/sepolia-deploy.md](docs/sepolia-deploy.md) |
| 6 — Final submission audit | README + all folders filled |

## License

MIT
