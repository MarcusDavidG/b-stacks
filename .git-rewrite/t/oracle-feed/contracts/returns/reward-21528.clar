(define-public (reward-21528 (recipient principal))
  (ok (as-contract (stx-transfer? u21528 tx-sender recipient))))
