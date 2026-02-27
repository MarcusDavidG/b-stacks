(define-public (reward-21840 (recipient principal))
  (ok (as-contract (stx-transfer? u21840 tx-sender recipient))))
