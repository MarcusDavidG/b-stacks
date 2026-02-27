(define-public (reward-21081 (recipient principal))
  (ok (as-contract (stx-transfer? u21081 tx-sender recipient))))
