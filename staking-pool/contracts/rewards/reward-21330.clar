(define-public (reward-21330 (recipient principal))
  (ok (as-contract (stx-transfer? u21330 tx-sender recipient))))
