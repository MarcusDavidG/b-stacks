(define-public (reward-21077 (recipient principal))
  (ok (as-contract (stx-transfer? u21077 tx-sender recipient))))
