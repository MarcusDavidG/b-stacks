(define-public (reward-21369 (recipient principal))
  (ok (as-contract (stx-transfer? u21369 tx-sender recipient))))
