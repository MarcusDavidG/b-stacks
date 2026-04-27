(define-public (reward-21366 (recipient principal))
  (ok (as-contract (stx-transfer? u21366 tx-sender recipient))))
