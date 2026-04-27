(define-public (reward-21558 (recipient principal))
  (ok (as-contract (stx-transfer? u21558 tx-sender recipient))))
