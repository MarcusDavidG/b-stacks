(define-public (reward-21612 (recipient principal))
  (ok (as-contract (stx-transfer? u21612 tx-sender recipient))))
