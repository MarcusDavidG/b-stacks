(define-public (reward-21296 (recipient principal))
  (ok (as-contract (stx-transfer? u21296 tx-sender recipient))))
