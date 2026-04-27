(define-public (reward-20966 (recipient principal))
  (ok (as-contract (stx-transfer? u20966 tx-sender recipient))))
