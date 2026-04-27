(define-public (reward-20935 (recipient principal))
  (ok (as-contract (stx-transfer? u20935 tx-sender recipient))))
