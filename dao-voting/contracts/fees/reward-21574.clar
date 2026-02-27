(define-public (reward-21574 (recipient principal))
  (ok (as-contract (stx-transfer? u21574 tx-sender recipient))))
