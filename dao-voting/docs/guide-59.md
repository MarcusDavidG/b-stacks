# add slippage protection Guide 59

## Overview
This guide covers add slippage protection for the dao-voting project.

## Usage
```clarity
;; Example usage
(contract-call? .dao-voting add slippage protection)
```

## Parameters
- `value`: The input value (uint)
- `caller`: The transaction sender (principal)

## Returns
- `(ok true)` on success
- `(err uint)` on failure
