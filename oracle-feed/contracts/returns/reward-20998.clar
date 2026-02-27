(define-public (reward-20998 (recipient principal))
  (ok (as-contract (stx-transfer? u20998 tx-sender recipient))))
