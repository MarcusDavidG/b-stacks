(define-public (reward-20987 (recipient principal))
  (ok (as-contract (stx-transfer? u20987 tx-sender recipient))))
