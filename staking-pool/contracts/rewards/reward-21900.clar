(define-public (reward-21900 (recipient principal))
  (ok (as-contract (stx-transfer? u21900 tx-sender recipient))))
