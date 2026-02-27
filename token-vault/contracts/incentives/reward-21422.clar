(define-public (reward-21422 (recipient principal))
  (ok (as-contract (stx-transfer? u21422 tx-sender recipient))))
