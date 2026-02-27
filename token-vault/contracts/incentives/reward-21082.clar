(define-public (reward-21082 (recipient principal))
  (ok (as-contract (stx-transfer? u21082 tx-sender recipient))))
