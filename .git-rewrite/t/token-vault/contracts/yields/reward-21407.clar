(define-public (reward-21407 (recipient principal))
  (ok (as-contract (stx-transfer? u21407 tx-sender recipient))))
