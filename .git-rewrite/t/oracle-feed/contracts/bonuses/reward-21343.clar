(define-public (reward-21343 (recipient principal))
  (ok (as-contract (stx-transfer? u21343 tx-sender recipient))))
