(define-public (reward-21691 (recipient principal))
  (ok (as-contract (stx-transfer? u21691 tx-sender recipient))))
