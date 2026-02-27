(define-public (reward-21647 (recipient principal))
  (ok (as-contract (stx-transfer? u21647 tx-sender recipient))))
