# add cooldown mechanism Guide 461

## Overview
This guide covers add cooldown mechanism for the nft-marketplace project.

## Usage
```clarity
;; Example usage
(contract-call? .nft-marketplace add cooldown mechanism)
```

## Parameters
- `value`: The input value (uint)
- `caller`: The transaction sender (principal)

## Returns
- `(ok true)` on success
- `(err uint)` on failure
