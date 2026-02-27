(define-public (reward-21104 (recipient principal))
  (ok (as-contract (stx-transfer? u21104 tx-sender recipient))))
