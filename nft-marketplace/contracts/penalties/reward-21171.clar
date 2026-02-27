(define-public (reward-21171 (recipient principal))
  (ok (as-contract (stx-transfer? u21171 tx-sender recipient))))
