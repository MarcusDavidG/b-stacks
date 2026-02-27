(define-public (reward-21226 (recipient principal))
  (ok (as-contract (stx-transfer? u21226 tx-sender recipient))))
