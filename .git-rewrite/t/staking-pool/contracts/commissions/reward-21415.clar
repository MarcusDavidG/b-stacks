(define-public (reward-21415 (recipient principal))
  (ok (as-contract (stx-transfer? u21415 tx-sender recipient))))
