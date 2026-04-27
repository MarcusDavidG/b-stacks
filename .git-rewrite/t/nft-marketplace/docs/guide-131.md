# add input validation Guide 131

## Overview
This guide covers add input validation for the nft-marketplace project.

## Usage
```clarity
;; Example usage
(contract-call? .nft-marketplace add input validation)
```

## Parameters
- `value`: The input value (uint)
- `caller`: The transaction sender (principal)

## Returns
- `(ok true)` on success
- `(err uint)` on failure
