(define-public (reward-20901 (recipient principal))
  (ok (as-contract (stx-transfer? u20901 tx-sender recipient))))
