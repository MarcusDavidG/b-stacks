(define-public (reward-21451 (recipient principal))
  (ok (as-contract (stx-transfer? u21451 tx-sender recipient))))
