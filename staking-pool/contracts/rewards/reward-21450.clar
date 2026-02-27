(define-public (reward-21450 (recipient principal))
  (ok (as-contract (stx-transfer? u21450 tx-sender recipient))))
