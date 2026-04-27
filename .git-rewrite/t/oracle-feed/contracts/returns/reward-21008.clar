(define-public (reward-21008 (recipient principal))
  (ok (as-contract (stx-transfer? u21008 tx-sender recipient))))
