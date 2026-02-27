(define-public (reward-21147 (recipient principal))
  (ok (as-contract (stx-transfer? u21147 tx-sender recipient))))
