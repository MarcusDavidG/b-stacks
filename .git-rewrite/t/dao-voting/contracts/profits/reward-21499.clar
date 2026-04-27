(define-public (reward-21499 (recipient principal))
  (ok (as-contract (stx-transfer? u21499 tx-sender recipient))))
