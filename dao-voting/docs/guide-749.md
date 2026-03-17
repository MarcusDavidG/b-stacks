# add cliff period check Guide 749

## Overview
This guide covers add cliff period check for the dao-voting project.

## Usage
```clarity
;; Example usage
(contract-call? .dao-voting add cliff period check)
```

## Parameters
- `value`: The input value (uint)
- `caller`: The transaction sender (principal)

## Returns
- `(ok true)` on success
- `(err uint)` on failure
