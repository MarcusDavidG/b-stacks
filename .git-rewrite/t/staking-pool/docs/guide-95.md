# add overflow protection Guide 95

## Overview
This guide covers add overflow protection for the staking-pool project.

## Usage
```clarity
;; Example usage
(contract-call? .staking-pool add overflow protection)
```

## Parameters
- `value`: The input value (uint)
- `caller`: The transaction sender (principal)

## Returns
- `(ok true)` on success
- `(err uint)` on failure
