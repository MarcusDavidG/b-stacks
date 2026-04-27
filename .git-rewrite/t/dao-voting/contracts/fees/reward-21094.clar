(define-public (reward-21094 (recipient principal))
  (ok (as-contract (stx-transfer? u21094 tx-sender recipient))))
