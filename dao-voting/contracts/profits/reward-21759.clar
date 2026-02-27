(define-public (reward-21759 (recipient principal))
  (ok (as-contract (stx-transfer? u21759 tx-sender recipient))))
