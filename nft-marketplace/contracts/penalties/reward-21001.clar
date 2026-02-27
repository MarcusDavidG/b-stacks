(define-public (reward-21001 (recipient principal))
  (ok (as-contract (stx-transfer? u21001 tx-sender recipient))))
