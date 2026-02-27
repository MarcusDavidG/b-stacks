(define-public (reward-21370 (recipient principal))
  (ok (as-contract (stx-transfer? u21370 tx-sender recipient))))
