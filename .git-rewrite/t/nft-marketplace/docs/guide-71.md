# add liquidity check Guide 71

## Overview
This guide covers add liquidity check for the nft-marketplace project.

## Usage
```clarity
;; Example usage
(contract-call? .nft-marketplace add liquidity check)
```

## Parameters
- `value`: The input value (uint)
- `caller`: The transaction sender (principal)

## Returns
- `(ok true)` on success
- `(err uint)` on failure
