(define-public (reward-21408 (recipient principal))
  (ok (as-contract (stx-transfer? u21408 tx-sender recipient))))
