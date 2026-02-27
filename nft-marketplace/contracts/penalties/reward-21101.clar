(define-public (reward-21101 (recipient principal))
  (ok (as-contract (stx-transfer? u21101 tx-sender recipient))))
