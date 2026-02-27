(define-public (reward-20980 (recipient principal))
  (ok (as-contract (stx-transfer? u20980 tx-sender recipient))))
