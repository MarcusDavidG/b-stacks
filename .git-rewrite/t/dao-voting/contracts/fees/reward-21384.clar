(define-public (reward-21384 (recipient principal))
  (ok (as-contract (stx-transfer? u21384 tx-sender recipient))))
