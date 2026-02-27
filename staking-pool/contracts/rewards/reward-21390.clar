(define-public (reward-21390 (recipient principal))
  (ok (as-contract (stx-transfer? u21390 tx-sender recipient))))
