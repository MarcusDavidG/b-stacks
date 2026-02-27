(define-public (reward-21275 (recipient principal))
  (ok (as-contract (stx-transfer? u21275 tx-sender recipient))))
