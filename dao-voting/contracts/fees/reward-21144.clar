(define-public (reward-21144 (recipient principal))
  (ok (as-contract (stx-transfer? u21144 tx-sender recipient))))
