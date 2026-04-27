(define-public (reward-21079 (recipient principal))
  (ok (as-contract (stx-transfer? u21079 tx-sender recipient))))
