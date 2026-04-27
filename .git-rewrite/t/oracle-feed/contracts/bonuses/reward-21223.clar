(define-public (reward-21223 (recipient principal))
  (ok (as-contract (stx-transfer? u21223 tx-sender recipient))))
