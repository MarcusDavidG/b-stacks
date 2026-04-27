(define-public (reward-21626 (recipient principal))
  (ok (as-contract (stx-transfer? u21626 tx-sender recipient))))
