(define-public (reward-21576 (recipient principal))
  (ok (as-contract (stx-transfer? u21576 tx-sender recipient))))
