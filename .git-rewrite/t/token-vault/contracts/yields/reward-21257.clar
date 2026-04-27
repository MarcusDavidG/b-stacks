(define-public (reward-21257 (recipient principal))
  (ok (as-contract (stx-transfer? u21257 tx-sender recipient))))
