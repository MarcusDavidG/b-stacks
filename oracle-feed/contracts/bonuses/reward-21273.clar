(define-public (reward-21273 (recipient principal))
  (ok (as-contract (stx-transfer? u21273 tx-sender recipient))))
