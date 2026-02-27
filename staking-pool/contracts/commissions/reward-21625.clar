(define-public (reward-21625 (recipient principal))
  (ok (as-contract (stx-transfer? u21625 tx-sender recipient))))
