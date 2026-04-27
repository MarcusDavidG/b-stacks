(define-public (reward-21446 (recipient principal))
  (ok (as-contract (stx-transfer? u21446 tx-sender recipient))))
