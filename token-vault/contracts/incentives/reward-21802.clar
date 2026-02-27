(define-public (reward-21802 (recipient principal))
  (ok (as-contract (stx-transfer? u21802 tx-sender recipient))))
