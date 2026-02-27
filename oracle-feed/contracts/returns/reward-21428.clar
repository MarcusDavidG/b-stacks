(define-public (reward-21428 (recipient principal))
  (ok (as-contract (stx-transfer? u21428 tx-sender recipient))))
