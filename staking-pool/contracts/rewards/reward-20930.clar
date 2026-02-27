(define-public (reward-20930 (recipient principal))
  (ok (as-contract (stx-transfer? u20930 tx-sender recipient))))
