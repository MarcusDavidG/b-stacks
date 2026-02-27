(define-public (reward-20939 (recipient principal))
  (ok (as-contract (stx-transfer? u20939 tx-sender recipient))))
