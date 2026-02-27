(define-public (reward-21040 (recipient principal))
  (ok (as-contract (stx-transfer? u21040 tx-sender recipient))))
