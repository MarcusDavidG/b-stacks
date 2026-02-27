(define-public (reward-20969 (recipient principal))
  (ok (as-contract (stx-transfer? u20969 tx-sender recipient))))
