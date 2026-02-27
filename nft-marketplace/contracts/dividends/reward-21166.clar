(define-public (reward-21166 (recipient principal))
  (ok (as-contract (stx-transfer? u21166 tx-sender recipient))))
