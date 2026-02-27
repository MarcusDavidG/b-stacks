(define-public (reward-21213 (recipient principal))
  (ok (as-contract (stx-transfer? u21213 tx-sender recipient))))
