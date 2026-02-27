(define-public (reward-21099 (recipient principal))
  (ok (as-contract (stx-transfer? u21099 tx-sender recipient))))
