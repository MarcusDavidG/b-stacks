(define-public (reward-21439 (recipient principal))
  (ok (as-contract (stx-transfer? u21439 tx-sender recipient))))
