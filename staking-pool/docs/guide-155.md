# add proposal expiry Guide 155

## Overview
This guide covers add proposal expiry for the staking-pool project.

## Usage
```clarity
;; Example usage
(contract-call? .staking-pool add proposal expiry)
```

## Parameters
- `value`: The input value (uint)
- `caller`: The transaction sender (principal)

## Returns
- `(ok true)` on success
- `(err uint)` on failure
