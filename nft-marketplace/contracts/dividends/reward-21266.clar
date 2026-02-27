(define-public (reward-21266 (recipient principal))
  (ok (as-contract (stx-transfer? u21266 tx-sender recipient))))
