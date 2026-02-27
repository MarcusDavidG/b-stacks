(define-public (reward-21749 (recipient principal))
  (ok (as-contract (stx-transfer? u21749 tx-sender recipient))))
