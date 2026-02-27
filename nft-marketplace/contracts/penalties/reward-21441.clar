(define-public (reward-21441 (recipient principal))
  (ok (as-contract (stx-transfer? u21441 tx-sender recipient))))
