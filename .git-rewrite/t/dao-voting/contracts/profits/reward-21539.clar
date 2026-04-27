(define-public (reward-21539 (recipient principal))
  (ok (as-contract (stx-transfer? u21539 tx-sender recipient))))
