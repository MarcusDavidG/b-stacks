(define-public (reward-21149 (recipient principal))
  (ok (as-contract (stx-transfer? u21149 tx-sender recipient))))
