(define-public (reward-21122 (recipient principal))
  (ok (as-contract (stx-transfer? u21122 tx-sender recipient))))
