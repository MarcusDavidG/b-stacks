(define-public (reward-21398 (recipient principal))
  (ok (as-contract (stx-transfer? u21398 tx-sender recipient))))
