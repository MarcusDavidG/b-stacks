(define-public (reward-20979 (recipient principal))
  (ok (as-contract (stx-transfer? u20979 tx-sender recipient))))
