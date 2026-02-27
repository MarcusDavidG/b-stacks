(define-public (reward-21298 (recipient principal))
  (ok (as-contract (stx-transfer? u21298 tx-sender recipient))))
