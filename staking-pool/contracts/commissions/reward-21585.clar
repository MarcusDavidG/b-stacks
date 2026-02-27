(define-public (reward-21585 (recipient principal))
  (ok (as-contract (stx-transfer? u21585 tx-sender recipient))))
