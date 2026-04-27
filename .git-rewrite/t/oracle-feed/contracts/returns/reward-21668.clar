(define-public (reward-21668 (recipient principal))
  (ok (as-contract (stx-transfer? u21668 tx-sender recipient))))
