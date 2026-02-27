(define-public (reward-21247 (recipient principal))
  (ok (as-contract (stx-transfer? u21247 tx-sender recipient))))
