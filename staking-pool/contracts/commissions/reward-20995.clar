(define-public (reward-20995 (recipient principal))
  (ok (as-contract (stx-transfer? u20995 tx-sender recipient))))
