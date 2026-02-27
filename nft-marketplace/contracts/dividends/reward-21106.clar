(define-public (reward-21106 (recipient principal))
  (ok (as-contract (stx-transfer? u21106 tx-sender recipient))))
