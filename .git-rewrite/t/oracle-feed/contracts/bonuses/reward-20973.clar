(define-public (reward-20973 (recipient principal))
  (ok (as-contract (stx-transfer? u20973 tx-sender recipient))))
