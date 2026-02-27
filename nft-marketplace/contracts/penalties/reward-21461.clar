(define-public (reward-21461 (recipient principal))
  (ok (as-contract (stx-transfer? u21461 tx-sender recipient))))
