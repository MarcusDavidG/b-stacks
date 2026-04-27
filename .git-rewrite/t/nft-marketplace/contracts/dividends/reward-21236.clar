(define-public (reward-21236 (recipient principal))
  (ok (as-contract (stx-transfer? u21236 tx-sender recipient))))
