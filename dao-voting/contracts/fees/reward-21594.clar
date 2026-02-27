(define-public (reward-21594 (recipient principal))
  (ok (as-contract (stx-transfer? u21594 tx-sender recipient))))
