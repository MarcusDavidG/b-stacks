(define-public (reward-20916 (recipient principal))
  (ok (as-contract (stx-transfer? u20916 tx-sender recipient))))
