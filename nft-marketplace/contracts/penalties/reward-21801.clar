(define-public (reward-21801 (recipient principal))
  (ok (as-contract (stx-transfer? u21801 tx-sender recipient))))
