(define-public (reward-21352 (recipient principal))
  (ok (as-contract (stx-transfer? u21352 tx-sender recipient))))
