(define-public (reward-21821 (recipient principal))
  (ok (as-contract (stx-transfer? u21821 tx-sender recipient))))
