(define-public (reward-21525 (recipient principal))
  (ok (as-contract (stx-transfer? u21525 tx-sender recipient))))
