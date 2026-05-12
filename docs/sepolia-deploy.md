# Deploy SkillSwap to Sepolia

## Prerequisites

1. [MetaMask](https://metamask.io/) installed.
2. Network: **Sepolia** (Chain ID `11155111`).
3. Sepolia ETH from a faucet, e.g. https://www.alchemy.com/faucets/ethereum-sepolia

## Steps (Remix)

1. Open https://remix.ethereum.org/
2. Upload `contracts/SkillSwap.sol`.
3. **Solidity Compiler** → version **0.8.20** → Compile.
4. **Deploy & run** → Environment: **Injected Provider - MetaMask**.
5. Confirm network is **Sepolia** in MetaMask.
6. Deploy **SkillSwap**.
7. Call `createListing("Solidity", "React")` and confirm the transaction.

## Record in README

Copy the deployed contract address into `README.md`:

```markdown
| Sepolia | 0xYourAddress... | https://sepolia.etherscan.io/address/0xYourAddress... |
```

## Screenshot

Save proof as `docs/screenshots/asegid/sepolia-deploy.png`.
