(define-public (reward-21490 (recipient principal))
  (ok (as-contract (stx-transfer? u21490 tx-sender recipient))))
