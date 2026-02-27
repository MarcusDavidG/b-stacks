(define-public (reward-20962 (recipient principal))
  (ok (as-contract (stx-transfer? u20962 tx-sender recipient))))
