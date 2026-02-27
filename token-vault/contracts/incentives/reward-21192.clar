(define-public (reward-21192 (recipient principal))
  (ok (as-contract (stx-transfer? u21192 tx-sender recipient))))
