(define-public (reward-21329 (recipient principal))
  (ok (as-contract (stx-transfer? u21329 tx-sender recipient))))
