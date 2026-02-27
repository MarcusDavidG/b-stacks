(define-public (reward-21565 (recipient principal))
  (ok (as-contract (stx-transfer? u21565 tx-sender recipient))))
