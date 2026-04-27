# Deploy Token Vault to Stacks Mainnet

## Project
Token Vault - Time-locked STX storage contract

## Deployment Checklist

### Pre-Deployment
- [ ] Contract code reviewed
- [ ] Tests passing (`clarinet test`)
- [ ] Security considerations documented
- [ ] Deployment configuration verified in `token-vault/deployments/mainnet.yaml`
- [ ] Mainnet wallet funded with STX for deployment fees

### Deployment Steps
- [ ] Navigate to project: `cd token-vault`
- [ ] Run `clarinet check` to verify contract syntax
- [ ] Review deployment costs and gas estimates
- [ ] Execute `clarinet deployments apply -p mainnet`
- [ ] Verify contract deployment on Stacks Explorer
- [ ] Document contract address in README

### Post-Deployment
- [ ] Add contract address to `token-vault/README.md`
- [ ] Test `create-vault` function on mainnet
- [ ] Test `withdraw` function on mainnet
- [ ] Test `get-vault` read-only function
- [ ] Update main project documentation
- [ ] Share deployment announcement

## Contract Details
- **Location**: `token-vault/contracts/token-vault.clar`
- **Network**: Stacks Mainnet
- **Deployment Tool**: Clarinet
- **Main Functions**: 
  - `create-vault` - Create time-locked vault
  - `withdraw` - Withdraw from unlocked vault
  - `get-vault` - Query vault information
  - `get-vault-count` - Get total vault count
  - `get-total-locked` - Get total STX locked

## Security Notes
- Ensure sufficient testing before mainnet deployment
- Verify unlock height calculations
- Test with small amounts first
- Contract has not been audited yet

## Estimated Deployment Cost
~0.5 STX (varies based on network conditions)
