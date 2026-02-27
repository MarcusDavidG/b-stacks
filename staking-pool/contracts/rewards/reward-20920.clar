(define-public (reward-20920 (recipient principal))
  (ok (as-contract (stx-transfer? u20920 tx-sender recipient))))
