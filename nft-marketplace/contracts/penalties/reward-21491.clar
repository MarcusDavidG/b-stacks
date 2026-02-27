(define-public (reward-21491 (recipient principal))
  (ok (as-contract (stx-transfer? u21491 tx-sender recipient))))
