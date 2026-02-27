(define-public (reward-20938 (recipient principal))
  (ok (as-contract (stx-transfer? u20938 tx-sender recipient))))
