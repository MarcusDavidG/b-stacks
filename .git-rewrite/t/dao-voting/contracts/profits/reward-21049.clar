(define-public (reward-21049 (recipient principal))
  (ok (as-contract (stx-transfer? u21049 tx-sender recipient))))
