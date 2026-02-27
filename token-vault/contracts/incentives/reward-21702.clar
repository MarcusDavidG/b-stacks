(define-public (reward-21702 (recipient principal))
  (ok (as-contract (stx-transfer? u21702 tx-sender recipient))))
