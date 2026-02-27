(define-public (reward-21372 (recipient principal))
  (ok (as-contract (stx-transfer? u21372 tx-sender recipient))))
