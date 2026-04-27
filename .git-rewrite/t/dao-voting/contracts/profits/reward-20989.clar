(define-public (reward-20989 (recipient principal))
  (ok (as-contract (stx-transfer? u20989 tx-sender recipient))))
