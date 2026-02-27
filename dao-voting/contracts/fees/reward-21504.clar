(define-public (reward-21504 (recipient principal))
  (ok (as-contract (stx-transfer? u21504 tx-sender recipient))))
