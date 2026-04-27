(define-public (reward-21355 (recipient principal))
  (ok (as-contract (stx-transfer? u21355 tx-sender recipient))))
