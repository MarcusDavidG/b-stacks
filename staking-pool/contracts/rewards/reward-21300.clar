(define-public (reward-21300 (recipient principal))
  (ok (as-contract (stx-transfer? u21300 tx-sender recipient))))
