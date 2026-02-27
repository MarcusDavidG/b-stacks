(define-public (reward-21782 (recipient principal))
  (ok (as-contract (stx-transfer? u21782 tx-sender recipient))))
