(define-public (reward-21305 (recipient principal))
  (ok (as-contract (stx-transfer? u21305 tx-sender recipient))))
