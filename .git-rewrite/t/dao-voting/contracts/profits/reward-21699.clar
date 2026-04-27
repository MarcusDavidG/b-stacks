(define-public (reward-21699 (recipient principal))
  (ok (as-contract (stx-transfer? u21699 tx-sender recipient))))
