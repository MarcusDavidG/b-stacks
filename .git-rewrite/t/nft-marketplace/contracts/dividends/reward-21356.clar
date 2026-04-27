(define-public (reward-21356 (recipient principal))
  (ok (as-contract (stx-transfer? u21356 tx-sender recipient))))
