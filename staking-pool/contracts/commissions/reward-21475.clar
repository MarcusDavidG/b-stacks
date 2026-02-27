(define-public (reward-21475 (recipient principal))
  (ok (as-contract (stx-transfer? u21475 tx-sender recipient))))
