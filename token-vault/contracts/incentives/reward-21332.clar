(define-public (reward-21332 (recipient principal))
  (ok (as-contract (stx-transfer? u21332 tx-sender recipient))))
