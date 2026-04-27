(define-public (reward-20927 (recipient principal))
  (ok (as-contract (stx-transfer? u20927 tx-sender recipient))))
