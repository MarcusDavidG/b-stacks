(define-public (reward-21271 (recipient principal))
  (ok (as-contract (stx-transfer? u21271 tx-sender recipient))))
