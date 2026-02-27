(define-public (reward-21238 (recipient principal))
  (ok (as-contract (stx-transfer? u21238 tx-sender recipient))))
