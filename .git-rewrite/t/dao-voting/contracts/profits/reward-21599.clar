(define-public (reward-21599 (recipient principal))
  (ok (as-contract (stx-transfer? u21599 tx-sender recipient))))
