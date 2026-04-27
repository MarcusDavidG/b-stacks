(define-public (reward-21564 (recipient principal))
  (ok (as-contract (stx-transfer? u21564 tx-sender recipient))))
