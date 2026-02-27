(define-public (reward-21580 (recipient principal))
  (ok (as-contract (stx-transfer? u21580 tx-sender recipient))))
