(define-public (reward-21500 (recipient principal))
  (ok (as-contract (stx-transfer? u21500 tx-sender recipient))))
