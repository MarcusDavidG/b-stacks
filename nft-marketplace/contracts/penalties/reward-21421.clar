(define-public (reward-21421 (recipient principal))
  (ok (as-contract (stx-transfer? u21421 tx-sender recipient))))
