(define-public (reward-21505 (recipient principal))
  (ok (as-contract (stx-transfer? u21505 tx-sender recipient))))
