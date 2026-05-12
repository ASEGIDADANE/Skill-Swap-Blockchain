# SkillSwap — Manual test checklist (Remix)

Use the **Remix JavaScript VM** first, then repeat on **Sepolia** for deployment proof.

## Setup

1. Open [Remix](https://remix.ethereum.org/).
2. Create `contracts/SkillSwap.sol` (or sync from this repo).
3. Compiler: **0.8.20+**, enable optimization optional.
4. **Compile** — expect no errors.

## Tests

| # | Action | Expected result | Pass |
|---|--------|-----------------|------|
| 1 | Deploy `SkillSwap` | Contract deployed, `listingCount` = 0 | ☐ |
| 2 | `createListing("Solidity", "React")` | `listingCount` = 1; `ListingCreated` event | ☐ |
| 3 | `createListing("Design", "Python")` | `listingCount` = 2 | ☐ |
| 4 | `getListing(0)` | Owner = your address; strings match; `active` = true | ☐ |
| 5 | `cancelListing(0)` | `getListing(0)` → `active` = false; event emitted | ☐ |
| 6 | `cancelListing(0)` again | Reverts: `Already cancelled` | ☐ |
| 7 | Switch account; `cancelListing(1)` | Reverts: `Not listing owner` | ☐ |
| 8 | `createListing("", "X")` | Reverts: `skillOffered required` | ☐ |
| 9 | `getListing(99)` | Reverts: `Invalid listing id` | ☐ |

## Sepolia

| # | Action | Expected result | Pass |
|---|--------|-----------------|------|
| 10 | MetaMask on Sepolia; deploy via Injected Provider | Contract address on Etherscan | ☐ |
| 11 | One `createListing` tx | Transaction visible on Sepolia Etherscan | ☐ |

## Sign-off

| Tester | GitHub | Date | Network |
|--------|--------|------|---------|
| Asegid | @ASEGIDADANE | 2026-05-10 | VM (run in Remix) |
| Member 2 | @username | | |
| Member 3 | @username | | |
| Member 4 | @username | | |
| Member 5 | @username | | |
