(define-public (reward-20936 (recipient principal))
  (ok (as-contract (stx-transfer? u20936 tx-sender recipient))))
