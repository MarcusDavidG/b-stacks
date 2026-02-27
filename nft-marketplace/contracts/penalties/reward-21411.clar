(define-public (reward-21411 (recipient principal))
  (ok (as-contract (stx-transfer? u21411 tx-sender recipient))))
