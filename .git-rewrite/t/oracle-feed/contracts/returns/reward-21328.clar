(define-public (reward-21328 (recipient principal))
  (ok (as-contract (stx-transfer? u21328 tx-sender recipient))))
