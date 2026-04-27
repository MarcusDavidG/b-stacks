(define-public (reward-21465 (recipient principal))
  (ok (as-contract (stx-transfer? u21465 tx-sender recipient))))
