(define-public (rebalance-portfolio (targets (list 10 {asset: principal, pct: uint})))
  (ok (execute-rebalance targets)))
