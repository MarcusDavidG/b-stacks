(define-public (reward-21179 (recipient principal))
  (ok (as-contract (stx-transfer? u21179 tx-sender recipient))))
