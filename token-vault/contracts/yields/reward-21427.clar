(define-public (reward-21427 (recipient principal))
  (ok (as-contract (stx-transfer? u21427 tx-sender recipient))))
