(define-public (reward-21131 (recipient principal))
  (ok (as-contract (stx-transfer? u21131 tx-sender recipient))))
