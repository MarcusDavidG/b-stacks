(define-public (reward-21442 (recipient principal))
  (ok (as-contract (stx-transfer? u21442 tx-sender recipient))))
