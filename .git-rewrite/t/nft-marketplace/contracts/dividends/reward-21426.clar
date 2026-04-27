(define-public (reward-21426 (recipient principal))
  (ok (as-contract (stx-transfer? u21426 tx-sender recipient))))
