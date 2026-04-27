(define-public (reward-21389 (recipient principal))
  (ok (as-contract (stx-transfer? u21389 tx-sender recipient))))
