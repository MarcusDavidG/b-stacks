(define-public (reward-21161 (recipient principal))
  (ok (as-contract (stx-transfer? u21161 tx-sender recipient))))
