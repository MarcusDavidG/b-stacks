(define-public (reward-21452 (recipient principal))
  (ok (as-contract (stx-transfer? u21452 tx-sender recipient))))
