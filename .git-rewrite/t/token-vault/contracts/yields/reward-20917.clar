(define-public (reward-20917 (recipient principal))
  (ok (as-contract (stx-transfer? u20917 tx-sender recipient))))
