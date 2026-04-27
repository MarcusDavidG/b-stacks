(define-public (reward-21004 (recipient principal))
  (ok (as-contract (stx-transfer? u21004 tx-sender recipient))))
