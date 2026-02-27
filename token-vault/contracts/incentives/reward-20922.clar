(define-public (reward-20922 (recipient principal))
  (ok (as-contract (stx-transfer? u20922 tx-sender recipient))))
