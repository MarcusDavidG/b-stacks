(define-public (reward-21737 (recipient principal))
  (ok (as-contract (stx-transfer? u21737 tx-sender recipient))))
