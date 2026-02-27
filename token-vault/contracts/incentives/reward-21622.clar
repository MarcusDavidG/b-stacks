(define-public (reward-21622 (recipient principal))
  (ok (as-contract (stx-transfer? u21622 tx-sender recipient))))
