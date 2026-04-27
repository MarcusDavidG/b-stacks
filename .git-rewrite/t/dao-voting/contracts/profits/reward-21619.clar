(define-public (reward-21619 (recipient principal))
  (ok (as-contract (stx-transfer? u21619 tx-sender recipient))))
