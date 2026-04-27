(define-public (reward-20908 (recipient principal))
  (ok (as-contract (stx-transfer? u20908 tx-sender recipient))))
