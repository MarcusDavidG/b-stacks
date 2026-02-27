(define-public (reward-21882 (recipient principal))
  (ok (as-contract (stx-transfer? u21882 tx-sender recipient))))
