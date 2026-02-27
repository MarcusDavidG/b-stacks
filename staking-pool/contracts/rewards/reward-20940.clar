(define-public (reward-20940 (recipient principal))
  (ok (as-contract (stx-transfer? u20940 tx-sender recipient))))
