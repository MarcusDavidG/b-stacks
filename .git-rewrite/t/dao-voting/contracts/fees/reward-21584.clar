(define-public (reward-21584 (recipient principal))
  (ok (as-contract (stx-transfer? u21584 tx-sender recipient))))
