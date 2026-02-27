(define-public (reward-20960 (recipient principal))
  (ok (as-contract (stx-transfer? u20960 tx-sender recipient))))
