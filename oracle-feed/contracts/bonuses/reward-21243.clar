(define-public (reward-21243 (recipient principal))
  (ok (as-contract (stx-transfer? u21243 tx-sender recipient))))
