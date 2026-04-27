(define-public (reward-21605 (recipient principal))
  (ok (as-contract (stx-transfer? u21605 tx-sender recipient))))
