(define-public (reward-21856 (recipient principal))
  (ok (as-contract (stx-transfer? u21856 tx-sender recipient))))
