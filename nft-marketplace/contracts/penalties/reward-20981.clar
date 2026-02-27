(define-public (reward-20981 (recipient principal))
  (ok (as-contract (stx-transfer? u20981 tx-sender recipient))))
