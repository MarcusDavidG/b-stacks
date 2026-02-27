(define-public (reward-21414 (recipient principal))
  (ok (as-contract (stx-transfer? u21414 tx-sender recipient))))
