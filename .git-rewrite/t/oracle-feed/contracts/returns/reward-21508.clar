(define-public (reward-21508 (recipient principal))
  (ok (as-contract (stx-transfer? u21508 tx-sender recipient))))
