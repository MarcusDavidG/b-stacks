(define-public (reward-21297 (recipient principal))
  (ok (as-contract (stx-transfer? u21297 tx-sender recipient))))
