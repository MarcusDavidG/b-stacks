(define-public (reward-20907 (recipient principal))
  (ok (as-contract (stx-transfer? u20907 tx-sender recipient))))
