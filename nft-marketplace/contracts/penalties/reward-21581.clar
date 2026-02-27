(define-public (reward-21581 (recipient principal))
  (ok (as-contract (stx-transfer? u21581 tx-sender recipient))))
