(define-public (reward-21833 (recipient principal))
  (ok (as-contract (stx-transfer? u21833 tx-sender recipient))))
