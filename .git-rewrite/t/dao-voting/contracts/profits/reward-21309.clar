(define-public (reward-21309 (recipient principal))
  (ok (as-contract (stx-transfer? u21309 tx-sender recipient))))
