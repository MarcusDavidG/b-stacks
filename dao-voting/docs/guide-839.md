# add royalty distribution Guide 839

## Overview
This guide covers add royalty distribution for the dao-voting project.

## Usage
```clarity
;; Example usage
(contract-call? .dao-voting add royalty distribution)
```

## Parameters
- `value`: The input value (uint)
- `caller`: The transaction sender (principal)

## Returns
- `(ok true)` on success
- `(err uint)` on failure
