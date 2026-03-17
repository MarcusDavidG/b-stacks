# add nonce tracking Guide 785

## Overview
This guide covers add nonce tracking for the staking-pool project.

## Usage
```clarity
;; Example usage
(contract-call? .staking-pool add nonce tracking)
```

## Parameters
- `value`: The input value (uint)
- `caller`: The transaction sender (principal)

## Returns
- `(ok true)` on success
- `(err uint)` on failure
