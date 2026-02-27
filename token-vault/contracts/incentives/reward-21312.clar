(define-public (reward-21312 (recipient principal))
  (ok (as-contract (stx-transfer? u21312 tx-sender recipient))))
