(define-public (reward-21195 (recipient principal))
  (ok (as-contract (stx-transfer? u21195 tx-sender recipient))))
