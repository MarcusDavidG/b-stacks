# Deploy NFT Marketplace to Stacks Mainnet

## Project
NFT Marketplace - Decentralized NFT trading platform

## Deployment Checklist

### Pre-Deployment
- [ ] Contract code reviewed
- [ ] Tests passing (`clarinet test`)
- [ ] NFT trait compatibility verified
- [ ] Deployment configuration verified
- [ ] Mainnet wallet funded with STX

### Deployment Steps
- [ ] Navigate to project: `cd nft-marketplace`
- [ ] Run `clarinet check`
- [ ] Review deployment costs
- [ ] Execute `clarinet deployments apply -p mainnet`
- [ ] Verify contract on Stacks Explorer
- [ ] Document contract address

### Post-Deployment
- [ ] Add contract address to `nft-marketplace/README.md`
- [ ] Test `list-nft` function on mainnet
- [ ] Test `unlist-nft` function on mainnet
- [ ] Test `buy-nft` function on mainnet
- [ ] Test `get-listing` read-only function
- [ ] Update documentation

## Contract Details
- **Location**: `nft-marketplace/contracts/marketplace.clar`
- **Network**: Stacks Mainnet
- **Main Functions**:
  - `list-nft` - List NFT for sale
  - `unlist-nft` - Remove listing
  - `buy-nft` - Purchase listed NFT
  - `get-listing` - Query listing details

## Security Notes
- Test with low-value NFTs first
- Verify NFT ownership transfers
- Ensure price validation works correctly

## Estimated Deployment Cost
~0.5 STX
