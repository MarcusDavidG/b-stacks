(define-public (reward-21485 (recipient principal))
  (ok (as-contract (stx-transfer? u21485 tx-sender recipient))))
