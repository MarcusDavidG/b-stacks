(define-public (reward-21380 (recipient principal))
  (ok (as-contract (stx-transfer? u21380 tx-sender recipient))))
