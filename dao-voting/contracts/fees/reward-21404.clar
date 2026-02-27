(define-public (reward-21404 (recipient principal))
  (ok (as-contract (stx-transfer? u21404 tx-sender recipient))))
