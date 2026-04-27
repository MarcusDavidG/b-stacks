# add event logging Guide 533

## Overview
This guide covers add event logging for the oracle-feed project.

## Usage
```clarity
;; Example usage
(contract-call? .oracle-feed add event logging)
```

## Parameters
- `value`: The input value (uint)
- `caller`: The transaction sender (principal)

## Returns
- `(ok true)` on success
- `(err uint)` on failure
