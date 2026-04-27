(define-public (reward-21838 (recipient principal))
  (ok (as-contract (stx-transfer? u21838 tx-sender recipient))))
