(define-public (reward-21728 (recipient principal))
  (ok (as-contract (stx-transfer? u21728 tx-sender recipient))))
