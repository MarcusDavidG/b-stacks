(define-public (reward-21523 (recipient principal))
  (ok (as-contract (stx-transfer? u21523 tx-sender recipient))))
