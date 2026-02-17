---
name: Deployment
about: Track mainnet deployment for a project
title: 'Deploy [PROJECT_NAME] to Stacks Mainnet'
labels: deployment, mainnet
assignees: ''
---

## Project
[PROJECT_NAME]

## Deployment Checklist

### Pre-Deployment
- [ ] Contract code reviewed
- [ ] Tests passing
- [ ] Security considerations documented
- [ ] Deployment configuration verified
- [ ] Mainnet wallet funded with STX

### Deployment Steps
- [ ] Run `clarinet check` to verify contract
- [ ] Review deployment costs
- [ ] Execute `clarinet deployments apply -p mainnet`
- [ ] Verify contract deployment on explorer
- [ ] Document contract address

### Post-Deployment
- [ ] Contract address added to README
- [ ] Verify contract functions on mainnet
- [ ] Update documentation with mainnet details
- [ ] Announce deployment

## Contract Details
- **Location**: `[PROJECT_PATH]/contracts/`
- **Network**: Stacks Mainnet
- **Deployment Tool**: Clarinet

## Notes
Add any deployment-specific notes or considerations here.
