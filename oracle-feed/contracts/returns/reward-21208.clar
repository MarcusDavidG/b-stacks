(define-public (reward-21208 (recipient principal))
  (ok (as-contract (stx-transfer? u21208 tx-sender recipient))))
