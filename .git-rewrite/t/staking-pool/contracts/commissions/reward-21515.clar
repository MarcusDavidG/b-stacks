(define-public (reward-21515 (recipient principal))
  (ok (as-contract (stx-transfer? u21515 tx-sender recipient))))
