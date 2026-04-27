(define-public (reward-21068 (recipient principal))
  (ok (as-contract (stx-transfer? u21068 tx-sender recipient))))
