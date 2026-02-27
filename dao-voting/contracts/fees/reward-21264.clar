(define-public (reward-21264 (recipient principal))
  (ok (as-contract (stx-transfer? u21264 tx-sender recipient))))
