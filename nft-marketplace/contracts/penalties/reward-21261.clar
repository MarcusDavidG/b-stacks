(define-public (reward-21261 (recipient principal))
  (ok (as-contract (stx-transfer? u21261 tx-sender recipient))))
