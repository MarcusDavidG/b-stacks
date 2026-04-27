(define-public (reward-21437 (recipient principal))
  (ok (as-contract (stx-transfer? u21437 tx-sender recipient))))
