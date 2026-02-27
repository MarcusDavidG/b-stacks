(define-public (reward-21860 (recipient principal))
  (ok (as-contract (stx-transfer? u21860 tx-sender recipient))))
