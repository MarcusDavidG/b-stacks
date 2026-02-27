(define-public (reward-20972 (recipient principal))
  (ok (as-contract (stx-transfer? u20972 tx-sender recipient))))
