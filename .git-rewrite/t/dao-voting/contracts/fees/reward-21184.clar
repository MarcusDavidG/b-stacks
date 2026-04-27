(define-public (reward-21184 (recipient principal))
  (ok (as-contract (stx-transfer? u21184 tx-sender recipient))))
