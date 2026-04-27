(define-public (reward-21794 (recipient principal))
  (ok (as-contract (stx-transfer? u21794 tx-sender recipient))))
