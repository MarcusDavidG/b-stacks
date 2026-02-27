(define-public (reward-20988 (recipient principal))
  (ok (as-contract (stx-transfer? u20988 tx-sender recipient))))
