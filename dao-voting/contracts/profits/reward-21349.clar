(define-public (reward-21349 (recipient principal))
  (ok (as-contract (stx-transfer? u21349 tx-sender recipient))))
