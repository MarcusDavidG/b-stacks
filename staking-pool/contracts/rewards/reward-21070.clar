(define-public (reward-21070 (recipient principal))
  (ok (as-contract (stx-transfer? u21070 tx-sender recipient))))
