(define-public (reward-21379 (recipient principal))
  (ok (as-contract (stx-transfer? u21379 tx-sender recipient))))
