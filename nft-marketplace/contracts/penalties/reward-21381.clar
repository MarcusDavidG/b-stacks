(define-public (reward-21381 (recipient principal))
  (ok (as-contract (stx-transfer? u21381 tx-sender recipient))))
