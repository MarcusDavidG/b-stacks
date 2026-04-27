# Deploy Oracle Feed to Stacks Mainnet

## Project
Oracle Feed - Price oracle for Bitcoin/STX data feeds

## Deployment Checklist

### Pre-Deployment
- [ ] Contract code reviewed
- [ ] Tests passing (`clarinet test`)
- [ ] Price feed sources verified
- [ ] Deployment configuration verified
- [ ] Mainnet wallet funded with STX

### Deployment Steps
- [ ] Navigate to project: `cd oracle-feed`
- [ ] Run `clarinet check`
- [ ] Review deployment costs
- [ ] Execute `clarinet deployments apply -p mainnet`
- [ ] Verify contract on Stacks Explorer
- [ ] Document contract address

### Post-Deployment
- [ ] Add contract address to `oracle-feed/README.md`
- [ ] Test price update functions on mainnet
- [ ] Test price query functions on mainnet
- [ ] Verify aggregator contracts
- [ ] Set up price feed automation
- [ ] Update documentation

## Contract Details
- **Location**: `oracle-feed/contracts/oracle.clar`
- **Network**: Stacks Mainnet
- **Main Functions**:
  - Update price feeds
  - Query current prices
  - Historical price data
  - Aggregator functions

## Security Notes
- Verify price data sources
- Test price update mechanisms
- Ensure data integrity

## Estimated Deployment Cost
~0.5 STX
