(define-public (reward-21738 (recipient principal))
  (ok (as-contract (stx-transfer? u21738 tx-sender recipient))))
