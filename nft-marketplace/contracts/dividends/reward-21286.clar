(define-public (reward-21286 (recipient principal))
  (ok (as-contract (stx-transfer? u21286 tx-sender recipient))))
