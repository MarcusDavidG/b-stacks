(define-public (reward-21311 (recipient principal))
  (ok (as-contract (stx-transfer? u21311 tx-sender recipient))))
