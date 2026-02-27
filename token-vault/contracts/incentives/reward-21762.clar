(define-public (reward-21762 (recipient principal))
  (ok (as-contract (stx-transfer? u21762 tx-sender recipient))))
