(define-public (reward-21542 (recipient principal))
  (ok (as-contract (stx-transfer? u21542 tx-sender recipient))))
