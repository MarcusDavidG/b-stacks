(define-public (reward-20965 (recipient principal))
  (ok (as-contract (stx-transfer? u20965 tx-sender recipient))))
