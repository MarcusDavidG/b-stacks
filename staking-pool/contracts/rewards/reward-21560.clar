(define-public (reward-21560 (recipient principal))
  (ok (as-contract (stx-transfer? u21560 tx-sender recipient))))
