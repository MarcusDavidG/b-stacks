(define-public (reward-21873 (recipient principal))
  (ok (as-contract (stx-transfer? u21873 tx-sender recipient))))
