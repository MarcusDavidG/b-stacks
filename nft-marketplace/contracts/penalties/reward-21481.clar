(define-public (reward-21481 (recipient principal))
  (ok (as-contract (stx-transfer? u21481 tx-sender recipient))))
