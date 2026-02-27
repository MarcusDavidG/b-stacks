(define-public (reward-21000 (recipient principal))
  (ok (as-contract (stx-transfer? u21000 tx-sender recipient))))
