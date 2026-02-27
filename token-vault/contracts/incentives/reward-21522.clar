(define-public (reward-21522 (recipient principal))
  (ok (as-contract (stx-transfer? u21522 tx-sender recipient))))
