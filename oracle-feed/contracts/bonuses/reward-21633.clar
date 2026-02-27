(define-public (reward-21633 (recipient principal))
  (ok (as-contract (stx-transfer? u21633 tx-sender recipient))))
