(define-public (reward-21537 (recipient principal))
  (ok (as-contract (stx-transfer? u21537 tx-sender recipient))))
