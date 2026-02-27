(define-public (reward-21230 (recipient principal))
  (ok (as-contract (stx-transfer? u21230 tx-sender recipient))))
