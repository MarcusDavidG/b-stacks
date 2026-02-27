(define-public (reward-20951 (recipient principal))
  (ok (as-contract (stx-transfer? u20951 tx-sender recipient))))
