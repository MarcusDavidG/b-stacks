(define-public (reward-21270 (recipient principal))
  (ok (as-contract (stx-transfer? u21270 tx-sender recipient))))
