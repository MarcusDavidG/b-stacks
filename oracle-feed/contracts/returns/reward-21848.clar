(define-public (reward-21848 (recipient principal))
  (ok (as-contract (stx-transfer? u21848 tx-sender recipient))))
