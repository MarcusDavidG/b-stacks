(define-public (reward-21126 (recipient principal))
  (ok (as-contract (stx-transfer? u21126 tx-sender recipient))))
