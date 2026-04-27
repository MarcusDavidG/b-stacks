(define-public (reward-20924 (recipient principal))
  (ok (as-contract (stx-transfer? u20924 tx-sender recipient))))
