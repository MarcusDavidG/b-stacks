(define-public (reward-21637 (recipient principal))
  (ok (as-contract (stx-transfer? u21637 tx-sender recipient))))
