(define-public (reward-21281 (recipient principal))
  (ok (as-contract (stx-transfer? u21281 tx-sender recipient))))
