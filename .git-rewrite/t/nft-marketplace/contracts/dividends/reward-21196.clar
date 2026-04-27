(define-public (reward-21196 (recipient principal))
  (ok (as-contract (stx-transfer? u21196 tx-sender recipient))))
