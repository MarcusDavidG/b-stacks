(define-public (diversify-treasury (allocations (list 10 {asset: principal, pct: uint})))
  (ok (rebalance-treasury allocations)))
