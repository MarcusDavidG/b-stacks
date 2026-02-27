(define-public (reward-21313 (recipient principal))
  (ok (as-contract (stx-transfer? u21313 tx-sender recipient))))
