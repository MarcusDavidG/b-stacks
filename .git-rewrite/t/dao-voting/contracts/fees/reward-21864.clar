(define-public (reward-21864 (recipient principal))
  (ok (as-contract (stx-transfer? u21864 tx-sender recipient))))
