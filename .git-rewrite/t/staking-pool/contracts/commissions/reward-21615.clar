(define-public (reward-21615 (recipient principal))
  (ok (as-contract (stx-transfer? u21615 tx-sender recipient))))
