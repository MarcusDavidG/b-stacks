(define-public (reward-21114 (recipient principal))
  (ok (as-contract (stx-transfer? u21114 tx-sender recipient))))
