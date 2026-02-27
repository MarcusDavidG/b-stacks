(define-public (reward-21165 (recipient principal))
  (ok (as-contract (stx-transfer? u21165 tx-sender recipient))))
