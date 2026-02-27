(define-public (reward-21510 (recipient principal))
  (ok (as-contract (stx-transfer? u21510 tx-sender recipient))))
