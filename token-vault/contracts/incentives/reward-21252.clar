(define-public (reward-21252 (recipient principal))
  (ok (as-contract (stx-transfer? u21252 tx-sender recipient))))
