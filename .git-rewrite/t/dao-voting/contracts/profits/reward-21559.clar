(define-public (reward-21559 (recipient principal))
  (ok (as-contract (stx-transfer? u21559 tx-sender recipient))))
