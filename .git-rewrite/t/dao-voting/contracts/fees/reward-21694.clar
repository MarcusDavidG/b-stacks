(define-public (reward-21694 (recipient principal))
  (ok (as-contract (stx-transfer? u21694 tx-sender recipient))))
