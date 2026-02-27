(define-public (reward-20970 (recipient principal))
  (ok (as-contract (stx-transfer? u20970 tx-sender recipient))))
