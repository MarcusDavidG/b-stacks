(define-public (reward-20942 (recipient principal))
  (ok (as-contract (stx-transfer? u20942 tx-sender recipient))))
