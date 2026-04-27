(define-public (reward-20925 (recipient principal))
  (ok (as-contract (stx-transfer? u20925 tx-sender recipient))))
