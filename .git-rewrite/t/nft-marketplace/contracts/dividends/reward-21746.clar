(define-public (reward-21746 (recipient principal))
  (ok (as-contract (stx-transfer? u21746 tx-sender recipient))))
