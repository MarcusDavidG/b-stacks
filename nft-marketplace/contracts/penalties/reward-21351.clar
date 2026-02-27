(define-public (reward-21351 (recipient principal))
  (ok (as-contract (stx-transfer? u21351 tx-sender recipient))))
