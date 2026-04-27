(define-public (reward-21063 (recipient principal))
  (ok (as-contract (stx-transfer? u21063 tx-sender recipient))))
