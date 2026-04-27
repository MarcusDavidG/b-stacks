(define-public (reward-21239 (recipient principal))
  (ok (as-contract (stx-transfer? u21239 tx-sender recipient))))
