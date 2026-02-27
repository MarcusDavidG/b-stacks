(define-public (reward-21526 (recipient principal))
  (ok (as-contract (stx-transfer? u21526 tx-sender recipient))))
