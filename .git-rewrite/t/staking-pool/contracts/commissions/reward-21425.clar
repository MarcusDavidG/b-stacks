(define-public (reward-21425 (recipient principal))
  (ok (as-contract (stx-transfer? u21425 tx-sender recipient))))
