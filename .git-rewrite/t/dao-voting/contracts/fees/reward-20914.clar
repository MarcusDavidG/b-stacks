(define-public (reward-20914 (recipient principal))
  (ok (as-contract (stx-transfer? u20914 tx-sender recipient))))
