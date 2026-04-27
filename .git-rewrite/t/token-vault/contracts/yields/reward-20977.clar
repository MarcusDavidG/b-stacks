(define-public (reward-20977 (recipient principal))
  (ok (as-contract (stx-transfer? u20977 tx-sender recipient))))
