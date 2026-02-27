(define-public (reward-20975 (recipient principal))
  (ok (as-contract (stx-transfer? u20975 tx-sender recipient))))
