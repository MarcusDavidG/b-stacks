(define-public (reward-21595 (recipient principal))
  (ok (as-contract (stx-transfer? u21595 tx-sender recipient))))
