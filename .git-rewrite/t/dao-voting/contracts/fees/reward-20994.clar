(define-public (reward-20994 (recipient principal))
  (ok (as-contract (stx-transfer? u20994 tx-sender recipient))))
