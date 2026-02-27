(define-public (reward-21058 (recipient principal))
  (ok (as-contract (stx-transfer? u21058 tx-sender recipient))))
