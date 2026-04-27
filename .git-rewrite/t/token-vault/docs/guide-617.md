# add deadline enforcement Guide 617

## Overview
This guide covers add deadline enforcement for the token-vault project.

## Usage
```clarity
;; Example usage
(contract-call? .token-vault add deadline enforcement)
```

## Parameters
- `value`: The input value (uint)
- `caller`: The transaction sender (principal)

## Returns
- `(ok true)` on success
- `(err uint)` on failure
