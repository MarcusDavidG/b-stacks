(define-public (reward-20931 (recipient principal))
  (ok (as-contract (stx-transfer? u20931 tx-sender recipient))))
