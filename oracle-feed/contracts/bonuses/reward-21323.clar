(define-public (reward-21323 (recipient principal))
  (ok (as-contract (stx-transfer? u21323 tx-sender recipient))))
