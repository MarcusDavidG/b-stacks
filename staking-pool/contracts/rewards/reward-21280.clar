(define-public (reward-21280 (recipient principal))
  (ok (as-contract (stx-transfer? u21280 tx-sender recipient))))
