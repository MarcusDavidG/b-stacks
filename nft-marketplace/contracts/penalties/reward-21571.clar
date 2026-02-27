(define-public (reward-21571 (recipient principal))
  (ok (as-contract (stx-transfer? u21571 tx-sender recipient))))
