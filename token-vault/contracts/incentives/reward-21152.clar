(define-public (reward-21152 (recipient principal))
  (ok (as-contract (stx-transfer? u21152 tx-sender recipient))))
