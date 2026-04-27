(define-public (reward-21009 (recipient principal))
  (ok (as-contract (stx-transfer? u21009 tx-sender recipient))))
