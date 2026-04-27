(define-public (reward-21326 (recipient principal))
  (ok (as-contract (stx-transfer? u21326 tx-sender recipient))))
