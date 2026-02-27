(define-public (reward-21248 (recipient principal))
  (ok (as-contract (stx-transfer? u21248 tx-sender recipient))))
