(define-public (reward-21014 (recipient principal))
  (ok (as-contract (stx-transfer? u21014 tx-sender recipient))))
