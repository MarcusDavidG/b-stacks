(define-public (reward-21123 (recipient principal))
  (ok (as-contract (stx-transfer? u21123 tx-sender recipient))))
