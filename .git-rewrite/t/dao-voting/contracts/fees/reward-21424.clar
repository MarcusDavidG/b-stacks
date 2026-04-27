(define-public (reward-21424 (recipient principal))
  (ok (as-contract (stx-transfer? u21424 tx-sender recipient))))
