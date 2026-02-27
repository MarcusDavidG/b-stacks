(define-public (reward-20961 (recipient principal))
  (ok (as-contract (stx-transfer? u20961 tx-sender recipient))))
