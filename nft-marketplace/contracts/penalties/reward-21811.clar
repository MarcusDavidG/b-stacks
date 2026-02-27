(define-public (reward-21811 (recipient principal))
  (ok (as-contract (stx-transfer? u21811 tx-sender recipient))))
