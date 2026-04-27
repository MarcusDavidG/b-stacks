(define-public (reward-21884 (recipient principal))
  (ok (as-contract (stx-transfer? u21884 tx-sender recipient))))
