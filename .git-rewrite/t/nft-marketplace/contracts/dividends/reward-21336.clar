(define-public (reward-21336 (recipient principal))
  (ok (as-contract (stx-transfer? u21336 tx-sender recipient))))
