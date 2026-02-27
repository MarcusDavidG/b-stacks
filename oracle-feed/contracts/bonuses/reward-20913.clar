(define-public (reward-20913 (recipient principal))
  (ok (as-contract (stx-transfer? u20913 tx-sender recipient))))
