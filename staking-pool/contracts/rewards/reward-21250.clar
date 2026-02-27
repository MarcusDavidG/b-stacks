(define-public (reward-21250 (recipient principal))
  (ok (as-contract (stx-transfer? u21250 tx-sender recipient))))
