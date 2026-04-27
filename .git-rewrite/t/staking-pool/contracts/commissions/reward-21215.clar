(define-public (reward-21215 (recipient principal))
  (ok (as-contract (stx-transfer? u21215 tx-sender recipient))))
