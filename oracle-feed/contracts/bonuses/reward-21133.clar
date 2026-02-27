(define-public (reward-21133 (recipient principal))
  (ok (as-contract (stx-transfer? u21133 tx-sender recipient))))
