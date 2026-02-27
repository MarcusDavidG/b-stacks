(define-public (reward-21078 (recipient principal))
  (ok (as-contract (stx-transfer? u21078 tx-sender recipient))))
