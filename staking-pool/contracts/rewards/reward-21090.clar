(define-public (reward-21090 (recipient principal))
  (ok (as-contract (stx-transfer? u21090 tx-sender recipient))))
