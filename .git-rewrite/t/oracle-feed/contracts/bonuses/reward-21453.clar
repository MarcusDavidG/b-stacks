(define-public (reward-21453 (recipient principal))
  (ok (as-contract (stx-transfer? u21453 tx-sender recipient))))
