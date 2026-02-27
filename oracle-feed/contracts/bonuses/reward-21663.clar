(define-public (reward-21663 (recipient principal))
  (ok (as-contract (stx-transfer? u21663 tx-sender recipient))))
