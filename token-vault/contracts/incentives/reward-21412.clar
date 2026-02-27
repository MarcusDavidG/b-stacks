(define-public (reward-21412 (recipient principal))
  (ok (as-contract (stx-transfer? u21412 tx-sender recipient))))
