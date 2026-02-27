(define-public (reward-21110 (recipient principal))
  (ok (as-contract (stx-transfer? u21110 tx-sender recipient))))
