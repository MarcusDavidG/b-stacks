(define-public (reward-21536 (recipient principal))
  (ok (as-contract (stx-transfer? u21536 tx-sender recipient))))
