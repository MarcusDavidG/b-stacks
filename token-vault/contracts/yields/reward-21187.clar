(define-public (reward-21187 (recipient principal))
  (ok (as-contract (stx-transfer? u21187 tx-sender recipient))))
