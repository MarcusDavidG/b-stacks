(define-public (reward-20906 (recipient principal))
  (ok (as-contract (stx-transfer? u20906 tx-sender recipient))))
