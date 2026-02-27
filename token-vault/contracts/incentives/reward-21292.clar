(define-public (reward-21292 (recipient principal))
  (ok (as-contract (stx-transfer? u21292 tx-sender recipient))))
