(define-public (reward-21392 (recipient principal))
  (ok (as-contract (stx-transfer? u21392 tx-sender recipient))))
