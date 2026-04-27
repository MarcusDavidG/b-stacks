(define-public (reward-20958 (recipient principal))
  (ok (as-contract (stx-transfer? u20958 tx-sender recipient))))
