(define-public (reward-20990 (recipient principal))
  (ok (as-contract (stx-transfer? u20990 tx-sender recipient))))
