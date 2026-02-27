(define-public (reward-21202 (recipient principal))
  (ok (as-contract (stx-transfer? u21202 tx-sender recipient))))
