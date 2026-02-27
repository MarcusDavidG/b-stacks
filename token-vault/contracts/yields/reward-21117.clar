(define-public (reward-21117 (recipient principal))
  (ok (as-contract (stx-transfer? u21117 tx-sender recipient))))
