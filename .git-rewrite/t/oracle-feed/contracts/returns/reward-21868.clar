(define-public (reward-21868 (recipient principal))
  (ok (as-contract (stx-transfer? u21868 tx-sender recipient))))
