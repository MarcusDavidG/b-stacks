(define-public (reward-21320 (recipient principal))
  (ok (as-contract (stx-transfer? u21320 tx-sender recipient))))
