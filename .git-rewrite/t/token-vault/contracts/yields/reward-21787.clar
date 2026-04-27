(define-public (reward-21787 (recipient principal))
  (ok (as-contract (stx-transfer? u21787 tx-sender recipient))))
