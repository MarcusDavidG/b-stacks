(define-public (reward-21527 (recipient principal))
  (ok (as-contract (stx-transfer? u21527 tx-sender recipient))))
