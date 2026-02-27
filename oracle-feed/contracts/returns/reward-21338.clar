(define-public (reward-21338 (recipient principal))
  (ok (as-contract (stx-transfer? u21338 tx-sender recipient))))
