(define-public (reward-21495 (recipient principal))
  (ok (as-contract (stx-transfer? u21495 tx-sender recipient))))
