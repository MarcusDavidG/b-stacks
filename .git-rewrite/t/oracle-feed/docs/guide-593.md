# add oracle validation Guide 593

## Overview
This guide covers add oracle validation for the oracle-feed project.

## Usage
```clarity
;; Example usage
(contract-call? .oracle-feed add oracle validation)
```

## Parameters
- `value`: The input value (uint)
- `caller`: The transaction sender (principal)

## Returns
- `(ok true)` on success
- `(err uint)` on failure
