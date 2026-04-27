(define-public (reward-20964 (recipient principal))
  (ok (as-contract (stx-transfer? u20964 tx-sender recipient))))
