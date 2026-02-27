(define-public (reward-21232 (recipient principal))
  (ok (as-contract (stx-transfer? u21232 tx-sender recipient))))
