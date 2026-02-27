(define-public (reward-20957 (recipient principal))
  (ok (as-contract (stx-transfer? u20957 tx-sender recipient))))
