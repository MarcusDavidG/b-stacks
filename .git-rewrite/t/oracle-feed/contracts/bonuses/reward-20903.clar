(define-public (reward-20903 (recipient principal))
  (ok (as-contract (stx-transfer? u20903 tx-sender recipient))))
