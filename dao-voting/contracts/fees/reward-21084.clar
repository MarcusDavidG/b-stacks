(define-public (reward-21084 (recipient principal))
  (ok (as-contract (stx-transfer? u21084 tx-sender recipient))))
