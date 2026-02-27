(define-public (reward-20918 (recipient principal))
  (ok (as-contract (stx-transfer? u20918 tx-sender recipient))))
