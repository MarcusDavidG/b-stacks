(define-public (reward-21083 (recipient principal))
  (ok (as-contract (stx-transfer? u21083 tx-sender recipient))))
