(define-public (reward-21597 (recipient principal))
  (ok (as-contract (stx-transfer? u21597 tx-sender recipient))))
