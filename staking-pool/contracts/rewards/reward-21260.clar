(define-public (reward-21260 (recipient principal))
  (ok (as-contract (stx-transfer? u21260 tx-sender recipient))))
