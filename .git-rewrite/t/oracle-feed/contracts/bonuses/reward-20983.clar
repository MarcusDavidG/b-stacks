(define-public (reward-20983 (recipient principal))
  (ok (as-contract (stx-transfer? u20983 tx-sender recipient))))
