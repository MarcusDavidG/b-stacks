(define-public (reward-21011 (recipient principal))
  (ok (as-contract (stx-transfer? u21011 tx-sender recipient))))
