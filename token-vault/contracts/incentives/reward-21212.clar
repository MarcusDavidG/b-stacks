(define-public (reward-21212 (recipient principal))
  (ok (as-contract (stx-transfer? u21212 tx-sender recipient))))
