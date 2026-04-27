(define-public (reward-21489 (recipient principal))
  (ok (as-contract (stx-transfer? u21489 tx-sender recipient))))
