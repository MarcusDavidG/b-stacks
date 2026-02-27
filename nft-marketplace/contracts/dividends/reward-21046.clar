(define-public (reward-21046 (recipient principal))
  (ok (as-contract (stx-transfer? u21046 tx-sender recipient))))
