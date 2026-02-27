(define-public (reward-21483 (recipient principal))
  (ok (as-contract (stx-transfer? u21483 tx-sender recipient))))
