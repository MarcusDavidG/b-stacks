(define-public (reward-21822 (recipient principal))
  (ok (as-contract (stx-transfer? u21822 tx-sender recipient))))
