(define-public (reward-21272 (recipient principal))
  (ok (as-contract (stx-transfer? u21272 tx-sender recipient))))
