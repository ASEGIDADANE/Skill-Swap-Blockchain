# SkillSwap — Design (v1)

## Goal

On-chain registry of skill swap listings. Each listing has an owner, offered skill, wanted skill, and active flag.

## Data model

```solidity
struct Listing {
    address owner;
    string skillOffered;
    string skillWanted;
    bool active;
}

uint256 public listingCount;
mapping(uint256 => Listing) public listings;
```

## Functions (v1)

| Function | Description | Owner |
|----------|-------------|-------|
| `createListing(string skillOffered, string skillWanted)` | New listing, emit `ListingCreated` | Member 3 |
| `getListing(uint256 id)` | Return listing fields | Member 4 |
| `cancelListing(uint256 id)` | Set `active = false`; only `listings[id].owner` | Member 4 |

## Events

- `ListingCreated(uint256 indexed id, address indexed owner)`
- `ListingCancelled(uint256 indexed id, address indexed owner)`

## Out of scope (v1)

- Payments / escrow
- Ratings
- Off-chain matching UI (optional later)

## Testing plan

See [testing.md](testing.md) for the full Remix checklist.

1. Remix VM: compile → deploy → run all 9 VM tests.
2. Sepolia: deploy → one `createListing` tx → Etherscan screenshot.

## Implementation status

- [x] Struct, state, events, `onlyListingOwner`
- [x] `createListing`, `getListing`, `cancelListing`
- [ ] Sepolia address in README
- [ ] Per-member course screenshots
