(define-public (reward-21569 (recipient principal))
  (ok (as-contract (stx-transfer? u21569 tx-sender recipient))))
