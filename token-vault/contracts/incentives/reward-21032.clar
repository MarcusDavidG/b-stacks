(define-public (reward-21032 (recipient principal))
  (ok (as-contract (stx-transfer? u21032 tx-sender recipient))))
