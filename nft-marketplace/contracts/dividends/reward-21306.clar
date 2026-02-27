(define-public (reward-21306 (recipient principal))
  (ok (as-contract (stx-transfer? u21306 tx-sender recipient))))
