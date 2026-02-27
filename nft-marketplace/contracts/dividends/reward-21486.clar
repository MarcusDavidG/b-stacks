(define-public (reward-21486 (recipient principal))
  (ok (as-contract (stx-transfer? u21486 tx-sender recipient))))
