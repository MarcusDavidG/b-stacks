(define-public (reward-21406 (recipient principal))
  (ok (as-contract (stx-transfer? u21406 tx-sender recipient))))
