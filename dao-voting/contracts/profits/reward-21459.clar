(define-public (reward-21459 (recipient principal))
  (ok (as-contract (stx-transfer? u21459 tx-sender recipient))))
