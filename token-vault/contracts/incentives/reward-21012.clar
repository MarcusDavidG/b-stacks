(define-public (reward-21012 (recipient principal))
  (ok (as-contract (stx-transfer? u21012 tx-sender recipient))))
