(define-public (reward-21363 (recipient principal))
  (ok (as-contract (stx-transfer? u21363 tx-sender recipient))))
