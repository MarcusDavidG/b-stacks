(define-public (reward-21337 (recipient principal))
  (ok (as-contract (stx-transfer? u21337 tx-sender recipient))))
