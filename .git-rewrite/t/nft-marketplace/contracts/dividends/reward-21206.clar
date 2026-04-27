(define-public (reward-21206 (recipient principal))
  (ok (as-contract (stx-transfer? u21206 tx-sender recipient))))
