(define-public (reward-21399 (recipient principal))
  (ok (as-contract (stx-transfer? u21399 tx-sender recipient))))
