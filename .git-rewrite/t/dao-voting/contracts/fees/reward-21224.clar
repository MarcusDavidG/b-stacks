(define-public (reward-21224 (recipient principal))
  (ok (as-contract (stx-transfer? u21224 tx-sender recipient))))
