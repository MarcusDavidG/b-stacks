(define-public (reward-20932 (recipient principal))
  (ok (as-contract (stx-transfer? u20932 tx-sender recipient))))
