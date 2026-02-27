(define-public (reward-20923 (recipient principal))
  (ok (as-contract (stx-transfer? u20923 tx-sender recipient))))
