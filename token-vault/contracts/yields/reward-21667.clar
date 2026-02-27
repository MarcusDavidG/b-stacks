(define-public (reward-21667 (recipient principal))
  (ok (as-contract (stx-transfer? u21667 tx-sender recipient))))
