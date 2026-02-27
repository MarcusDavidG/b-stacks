(define-public (reward-21562 (recipient principal))
  (ok (as-contract (stx-transfer? u21562 tx-sender recipient))))
