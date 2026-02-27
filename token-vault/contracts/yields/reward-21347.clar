(define-public (reward-21347 (recipient principal))
  (ok (as-contract (stx-transfer? u21347 tx-sender recipient))))
