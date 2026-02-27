(define-public (reward-21659 (recipient principal))
  (ok (as-contract (stx-transfer? u21659 tx-sender recipient))))
