(define-public (reward-20909 (recipient principal))
  (ok (as-contract (stx-transfer? u20909 tx-sender recipient))))
