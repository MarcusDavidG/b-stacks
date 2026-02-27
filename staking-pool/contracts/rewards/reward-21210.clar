(define-public (reward-21210 (recipient principal))
  (ok (as-contract (stx-transfer? u21210 tx-sender recipient))))
