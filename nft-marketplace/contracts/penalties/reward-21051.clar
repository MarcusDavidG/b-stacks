(define-public (reward-21051 (recipient principal))
  (ok (as-contract (stx-transfer? u21051 tx-sender recipient))))
