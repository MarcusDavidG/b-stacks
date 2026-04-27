(define-public (reward-21613 (recipient principal))
  (ok (as-contract (stx-transfer? u21613 tx-sender recipient))))
