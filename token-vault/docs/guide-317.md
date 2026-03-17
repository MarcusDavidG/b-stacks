# add merkle proof verification Guide 317

## Overview
This guide covers add merkle proof verification for the token-vault project.

## Usage
```clarity
;; Example usage
(contract-call? .token-vault add merkle proof verification)
```

## Parameters
- `value`: The input value (uint)
- `caller`: The transaction sender (principal)

## Returns
- `(ok true)` on success
- `(err uint)` on failure
