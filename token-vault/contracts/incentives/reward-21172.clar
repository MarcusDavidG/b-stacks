(define-public (reward-21172 (recipient principal))
  (ok (as-contract (stx-transfer? u21172 tx-sender recipient))))
