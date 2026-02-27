(define-public (reward-20941 (recipient principal))
  (ok (as-contract (stx-transfer? u20941 tx-sender recipient))))
