(define-public (reward-21141 (recipient principal))
  (ok (as-contract (stx-transfer? u21141 tx-sender recipient))))
