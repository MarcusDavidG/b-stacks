(define-public (reward-21197 (recipient principal))
  (ok (as-contract (stx-transfer? u21197 tx-sender recipient))))
