(define-public (reward-20912 (recipient principal))
  (ok (as-contract (stx-transfer? u20912 tx-sender recipient))))
