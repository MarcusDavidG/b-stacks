(define-public (reward-21050 (recipient principal))
  (ok (as-contract (stx-transfer? u21050 tx-sender recipient))))
