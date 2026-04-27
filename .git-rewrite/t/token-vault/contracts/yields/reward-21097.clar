(define-public (reward-21097 (recipient principal))
  (ok (as-contract (stx-transfer? u21097 tx-sender recipient))))
