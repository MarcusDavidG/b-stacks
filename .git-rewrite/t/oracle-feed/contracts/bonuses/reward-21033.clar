(define-public (reward-21033 (recipient principal))
  (ok (as-contract (stx-transfer? u21033 tx-sender recipient))))
