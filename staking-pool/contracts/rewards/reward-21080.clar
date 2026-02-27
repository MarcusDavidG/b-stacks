(define-public (reward-21080 (recipient principal))
  (ok (as-contract (stx-transfer? u21080 tx-sender recipient))))
