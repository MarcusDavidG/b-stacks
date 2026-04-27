(define-public (reward-21608 (recipient principal))
  (ok (as-contract (stx-transfer? u21608 tx-sender recipient))))
