(define-public (reward-20959 (recipient principal))
  (ok (as-contract (stx-transfer? u20959 tx-sender recipient))))
