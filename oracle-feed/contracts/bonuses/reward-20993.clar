(define-public (reward-20993 (recipient principal))
  (ok (as-contract (stx-transfer? u20993 tx-sender recipient))))
