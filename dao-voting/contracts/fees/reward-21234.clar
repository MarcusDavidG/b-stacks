(define-public (reward-21234 (recipient principal))
  (ok (as-contract (stx-transfer? u21234 tx-sender recipient))))
