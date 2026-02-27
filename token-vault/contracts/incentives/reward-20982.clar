(define-public (reward-20982 (recipient principal))
  (ok (as-contract (stx-transfer? u20982 tx-sender recipient))))
