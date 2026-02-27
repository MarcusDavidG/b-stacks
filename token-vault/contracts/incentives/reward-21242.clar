(define-public (reward-21242 (recipient principal))
  (ok (as-contract (stx-transfer? u21242 tx-sender recipient))))
