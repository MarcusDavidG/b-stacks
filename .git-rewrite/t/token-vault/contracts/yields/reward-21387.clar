(define-public (reward-21387 (recipient principal))
  (ok (as-contract (stx-transfer? u21387 tx-sender recipient))))
