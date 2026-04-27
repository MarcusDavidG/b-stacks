(define-public (reward-21279 (recipient principal))
  (ok (as-contract (stx-transfer? u21279 tx-sender recipient))))
