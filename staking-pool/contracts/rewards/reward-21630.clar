(define-public (reward-21630 (recipient principal))
  (ok (as-contract (stx-transfer? u21630 tx-sender recipient))))
