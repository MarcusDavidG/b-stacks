(define-public (reward-21573 (recipient principal))
  (ok (as-contract (stx-transfer? u21573 tx-sender recipient))))
