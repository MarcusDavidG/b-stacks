(define-public (reward-21360 (recipient principal))
  (ok (as-contract (stx-transfer? u21360 tx-sender recipient))))
