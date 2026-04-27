# Deploy Staking Pool to Stacks Mainnet

## Project
Staking Pool - STX staking with reward distribution

## Deployment Checklist

### Pre-Deployment
- [ ] Contract code reviewed
- [ ] Tests passing (`clarinet test`)
- [ ] Reward calculations verified
- [ ] Deployment configuration verified
- [ ] Mainnet wallet funded with STX

### Deployment Steps
- [ ] Navigate to project: `cd staking-pool`
- [ ] Run `clarinet check`
- [ ] Review deployment costs
- [ ] Execute `clarinet deployments apply -p mainnet`
- [ ] Verify contract on Stacks Explorer
- [ ] Document contract address

### Post-Deployment
- [ ] Add contract address to `staking-pool/README.md`
- [ ] Test stake function on mainnet
- [ ] Test unstake function on mainnet
- [ ] Test reward distribution on mainnet
- [ ] Verify staking calculations
- [ ] Update documentation

## Contract Details
- **Location**: `staking-pool/contracts/staking.clar`
- **Network**: Stacks Mainnet
- **Main Functions**:
  - Stake STX
  - Unstake STX
  - Claim rewards
  - Query staking info

## Security Notes
- Verify reward calculation accuracy
- Test with small amounts first
- Ensure proper fund management

## Estimated Deployment Cost
~0.5 STX
