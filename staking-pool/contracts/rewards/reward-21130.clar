(define-public (reward-21130 (recipient principal))
  (ok (as-contract (stx-transfer? u21130 tx-sender recipient))))
