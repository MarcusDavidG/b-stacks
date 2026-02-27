(define-public (reward-21834 (recipient principal))
  (ok (as-contract (stx-transfer? u21834 tx-sender recipient))))
