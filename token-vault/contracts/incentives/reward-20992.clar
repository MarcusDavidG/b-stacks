(define-public (reward-20992 (recipient principal))
  (ok (as-contract (stx-transfer? u20992 tx-sender recipient))))
