(define-public (reward-21604 (recipient principal))
  (ok (as-contract (stx-transfer? u21604 tx-sender recipient))))
