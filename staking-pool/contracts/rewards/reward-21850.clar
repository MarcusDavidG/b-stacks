(define-public (reward-21850 (recipient principal))
  (ok (as-contract (stx-transfer? u21850 tx-sender recipient))))
