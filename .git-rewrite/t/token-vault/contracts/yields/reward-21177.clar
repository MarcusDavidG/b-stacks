(define-public (reward-21177 (recipient principal))
  (ok (as-contract (stx-transfer? u21177 tx-sender recipient))))
