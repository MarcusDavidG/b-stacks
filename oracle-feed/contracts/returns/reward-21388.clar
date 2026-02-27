(define-public (reward-21388 (recipient principal))
  (ok (as-contract (stx-transfer? u21388 tx-sender recipient))))
