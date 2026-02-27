(define-public (reward-21322 (recipient principal))
  (ok (as-contract (stx-transfer? u21322 tx-sender recipient))))
