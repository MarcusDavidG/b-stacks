(define-public (reward-21644 (recipient principal))
  (ok (as-contract (stx-transfer? u21644 tx-sender recipient))))
