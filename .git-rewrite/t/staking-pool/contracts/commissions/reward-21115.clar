(define-public (reward-21115 (recipient principal))
  (ok (as-contract (stx-transfer? u21115 tx-sender recipient))))
