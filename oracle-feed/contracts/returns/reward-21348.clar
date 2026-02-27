(define-public (reward-21348 (recipient principal))
  (ok (as-contract (stx-transfer? u21348 tx-sender recipient))))
