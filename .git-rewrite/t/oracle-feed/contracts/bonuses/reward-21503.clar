(define-public (reward-21503 (recipient principal))
  (ok (as-contract (stx-transfer? u21503 tx-sender recipient))))
