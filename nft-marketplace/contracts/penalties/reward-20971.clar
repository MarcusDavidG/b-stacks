(define-public (reward-20971 (recipient principal))
  (ok (as-contract (stx-transfer? u20971 tx-sender recipient))))
