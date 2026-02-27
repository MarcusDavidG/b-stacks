(define-public (reward-21835 (recipient principal))
  (ok (as-contract (stx-transfer? u21835 tx-sender recipient))))
