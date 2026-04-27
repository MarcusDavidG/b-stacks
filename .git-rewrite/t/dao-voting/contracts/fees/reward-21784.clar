(define-public (reward-21784 (recipient principal))
  (ok (as-contract (stx-transfer? u21784 tx-sender recipient))))
