(define-public (reward-21345 (recipient principal))
  (ok (as-contract (stx-transfer? u21345 tx-sender recipient))))
