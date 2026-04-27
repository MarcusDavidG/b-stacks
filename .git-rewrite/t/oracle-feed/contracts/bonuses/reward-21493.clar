(define-public (reward-21493 (recipient principal))
  (ok (as-contract (stx-transfer? u21493 tx-sender recipient))))
