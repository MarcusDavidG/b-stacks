# Deploy DAO Voting to Stacks Mainnet

## Project
DAO Voting - Decentralized governance and proposal system

## Deployment Checklist

### Pre-Deployment
- [ ] Contract code reviewed
- [ ] Tests passing (`clarinet test`)
- [ ] Voting mechanisms verified
- [ ] Deployment configuration verified
- [ ] Mainnet wallet funded with STX

### Deployment Steps
- [ ] Navigate to project: `cd dao-voting`
- [ ] Run `clarinet check`
- [ ] Review deployment costs
- [ ] Execute `clarinet deployments apply -p mainnet`
- [ ] Verify contract on Stacks Explorer
- [ ] Document contract address

### Post-Deployment
- [ ] Add contract address to `dao-voting/README.md`
- [ ] Test proposal creation on mainnet
- [ ] Test voting functions on mainnet
- [ ] Test proposal execution on mainnet
- [ ] Verify governance parameters
- [ ] Update documentation

## Contract Details
- **Location**: `dao-voting/contracts/dao.clar`
- **Network**: Stacks Mainnet
- **Main Functions**:
  - Proposal creation
  - Vote casting
  - Proposal execution
  - Governance queries

## Security Notes
- Verify voting thresholds
- Test proposal lifecycle
- Ensure proper access controls

## Estimated Deployment Cost
~0.5 STX
