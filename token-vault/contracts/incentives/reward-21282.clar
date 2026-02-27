(define-public (reward-21282 (recipient principal))
  (ok (as-contract (stx-transfer? u21282 tx-sender recipient))))
