(define-public (reward-20910 (recipient principal))
  (ok (as-contract (stx-transfer? u20910 tx-sender recipient))))
