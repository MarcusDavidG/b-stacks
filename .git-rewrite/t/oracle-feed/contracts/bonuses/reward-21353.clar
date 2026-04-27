(define-public (reward-21353 (recipient principal))
  (ok (as-contract (stx-transfer? u21353 tx-sender recipient))))
