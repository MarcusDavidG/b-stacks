(define-public (reward-21150 (recipient principal))
  (ok (as-contract (stx-transfer? u21150 tx-sender recipient))))
