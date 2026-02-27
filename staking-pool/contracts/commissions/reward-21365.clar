(define-public (reward-21365 (recipient principal))
  (ok (as-contract (stx-transfer? u21365 tx-sender recipient))))
