(define-public (reward-20953 (recipient principal))
  (ok (as-contract (stx-transfer? u20953 tx-sender recipient))))
