(define-public (reward-20919 (recipient principal))
  (ok (as-contract (stx-transfer? u20919 tx-sender recipient))))
