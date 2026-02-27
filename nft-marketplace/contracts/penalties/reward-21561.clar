(define-public (reward-21561 (recipient principal))
  (ok (as-contract (stx-transfer? u21561 tx-sender recipient))))
