(define-public (reward-20928 (recipient principal))
  (ok (as-contract (stx-transfer? u20928 tx-sender recipient))))
