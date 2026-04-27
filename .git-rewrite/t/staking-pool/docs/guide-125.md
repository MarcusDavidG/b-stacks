# implement min amount validation Guide 125

## Overview
This guide covers implement min amount validation for the staking-pool project.

## Usage
```clarity
;; Example usage
(contract-call? .staking-pool implement min amount validation)
```

## Parameters
- `value`: The input value (uint)
- `caller`: The transaction sender (principal)

## Returns
- `(ok true)` on success
- `(err uint)` on failure
