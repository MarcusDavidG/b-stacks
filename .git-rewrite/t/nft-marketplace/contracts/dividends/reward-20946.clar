(define-public (reward-20946 (recipient principal))
  (ok (as-contract (stx-transfer? u20946 tx-sender recipient))))
