(define-public (reward-21478 (recipient principal))
  (ok (as-contract (stx-transfer? u21478 tx-sender recipient))))
