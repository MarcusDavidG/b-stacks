(define-public (reward-20948 (recipient principal))
  (ok (as-contract (stx-transfer? u20948 tx-sender recipient))))
