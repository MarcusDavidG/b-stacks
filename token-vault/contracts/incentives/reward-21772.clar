(define-public (reward-21772 (recipient principal))
  (ok (as-contract (stx-transfer? u21772 tx-sender recipient))))
