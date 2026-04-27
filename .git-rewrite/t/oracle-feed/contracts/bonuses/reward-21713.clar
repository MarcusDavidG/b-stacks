(define-public (reward-21713 (recipient principal))
  (ok (as-contract (stx-transfer? u21713 tx-sender recipient))))
