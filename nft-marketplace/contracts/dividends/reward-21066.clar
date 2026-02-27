(define-public (reward-21066 (recipient principal))
  (ok (as-contract (stx-transfer? u21066 tx-sender recipient))))
