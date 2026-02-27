(define-public (reward-21176 (recipient principal))
  (ok (as-contract (stx-transfer? u21176 tx-sender recipient))))
