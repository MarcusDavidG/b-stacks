(define-public (reward-21073 (recipient principal))
  (ok (as-contract (stx-transfer? u21073 tx-sender recipient))))
