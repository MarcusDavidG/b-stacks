(define-public (reward-21643 (recipient principal))
  (ok (as-contract (stx-transfer? u21643 tx-sender recipient))))
