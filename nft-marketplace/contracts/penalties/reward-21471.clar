(define-public (reward-21471 (recipient principal))
  (ok (as-contract (stx-transfer? u21471 tx-sender recipient))))
