(define-public (reward-21237 (recipient principal))
  (ok (as-contract (stx-transfer? u21237 tx-sender recipient))))
