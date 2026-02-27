(define-public (reward-20996 (recipient principal))
  (ok (as-contract (stx-transfer? u20996 tx-sender recipient))))
