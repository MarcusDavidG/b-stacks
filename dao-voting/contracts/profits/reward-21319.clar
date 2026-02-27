(define-public (reward-21319 (recipient principal))
  (ok (as-contract (stx-transfer? u21319 tx-sender recipient))))
