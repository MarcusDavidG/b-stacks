(define-public (reward-21233 (recipient principal))
  (ok (as-contract (stx-transfer? u21233 tx-sender recipient))))
