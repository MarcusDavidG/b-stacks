(define-public (reward-21757 (recipient principal))
  (ok (as-contract (stx-transfer? u21757 tx-sender recipient))))
