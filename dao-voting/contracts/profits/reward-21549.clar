(define-public (reward-21549 (recipient principal))
  (ok (as-contract (stx-transfer? u21549 tx-sender recipient))))
