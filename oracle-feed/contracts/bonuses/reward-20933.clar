(define-public (reward-20933 (recipient principal))
  (ok (as-contract (stx-transfer? u20933 tx-sender recipient))))
