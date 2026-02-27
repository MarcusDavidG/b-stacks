(define-public (reward-20997 (recipient principal))
  (ok (as-contract (stx-transfer? u20997 tx-sender recipient))))
