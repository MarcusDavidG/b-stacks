(define-public (reward-21764 (recipient principal))
  (ok (as-contract (stx-transfer? u21764 tx-sender recipient))))
