(define-public (reward-21181 (recipient principal))
  (ok (as-contract (stx-transfer? u21181 tx-sender recipient))))
