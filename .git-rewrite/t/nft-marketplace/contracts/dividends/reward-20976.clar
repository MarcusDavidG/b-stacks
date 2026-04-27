(define-public (reward-20976 (recipient principal))
  (ok (as-contract (stx-transfer? u20976 tx-sender recipient))))
