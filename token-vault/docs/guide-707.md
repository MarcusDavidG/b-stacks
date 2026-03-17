# add quorum calculation Guide 707

## Overview
This guide covers add quorum calculation for the token-vault project.

## Usage
```clarity
;; Example usage
(contract-call? .token-vault add quorum calculation)
```

## Parameters
- `value`: The input value (uint)
- `caller`: The transaction sender (principal)

## Returns
- `(ok true)` on success
- `(err uint)` on failure
