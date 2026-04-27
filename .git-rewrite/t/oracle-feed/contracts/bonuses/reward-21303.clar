(define-public (reward-21303 (recipient principal))
  (ok (as-contract (stx-transfer? u21303 tx-sender recipient))))
