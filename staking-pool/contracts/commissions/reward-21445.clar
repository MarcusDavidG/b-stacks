(define-public (reward-21445 (recipient principal))
  (ok (as-contract (stx-transfer? u21445 tx-sender recipient))))
