(define-public (reward-21765 (recipient principal))
  (ok (as-contract (stx-transfer? u21765 tx-sender recipient))))
