(define-public (reward-21555 (recipient principal))
  (ok (as-contract (stx-transfer? u21555 tx-sender recipient))))
