(define-public (reward-21602 (recipient principal))
  (ok (as-contract (stx-transfer? u21602 tx-sender recipient))))
