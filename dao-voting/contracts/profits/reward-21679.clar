(define-public (reward-21679 (recipient principal))
  (ok (as-contract (stx-transfer? u21679 tx-sender recipient))))
