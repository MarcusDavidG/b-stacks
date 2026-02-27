(define-public (reward-21405 (recipient principal))
  (ok (as-contract (stx-transfer? u21405 tx-sender recipient))))
