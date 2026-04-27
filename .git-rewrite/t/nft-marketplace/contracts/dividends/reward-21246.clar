(define-public (reward-21246 (recipient principal))
  (ok (as-contract (stx-transfer? u21246 tx-sender recipient))))
