(define-public (reward-21480 (recipient principal))
  (ok (as-contract (stx-transfer? u21480 tx-sender recipient))))
