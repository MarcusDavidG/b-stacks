(define-public (reward-21479 (recipient principal))
  (ok (as-contract (stx-transfer? u21479 tx-sender recipient))))
