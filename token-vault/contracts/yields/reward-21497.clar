(define-public (reward-21497 (recipient principal))
  (ok (as-contract (stx-transfer? u21497 tx-sender recipient))))
