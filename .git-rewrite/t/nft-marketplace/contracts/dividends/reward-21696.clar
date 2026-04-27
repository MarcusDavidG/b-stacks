(define-public (reward-21696 (recipient principal))
  (ok (as-contract (stx-transfer? u21696 tx-sender recipient))))
