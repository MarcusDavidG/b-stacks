(define-public (reward-21568 (recipient principal))
  (ok (as-contract (stx-transfer? u21568 tx-sender recipient))))
