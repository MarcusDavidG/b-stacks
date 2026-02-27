(define-public (reward-21294 (recipient principal))
  (ok (as-contract (stx-transfer? u21294 tx-sender recipient))))
