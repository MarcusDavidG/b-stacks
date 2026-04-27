(define-public (reward-21276 (recipient principal))
  (ok (as-contract (stx-transfer? u21276 tx-sender recipient))))
