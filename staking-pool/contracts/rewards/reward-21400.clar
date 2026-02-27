(define-public (reward-21400 (recipient principal))
  (ok (as-contract (stx-transfer? u21400 tx-sender recipient))))
