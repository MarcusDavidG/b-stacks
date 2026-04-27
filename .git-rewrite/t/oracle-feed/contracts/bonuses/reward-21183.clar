(define-public (reward-21183 (recipient principal))
  (ok (as-contract (stx-transfer? u21183 tx-sender recipient))))
