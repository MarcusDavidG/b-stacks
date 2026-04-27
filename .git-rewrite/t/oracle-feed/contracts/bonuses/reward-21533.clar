(define-public (reward-21533 (recipient principal))
  (ok (as-contract (stx-transfer? u21533 tx-sender recipient))))
