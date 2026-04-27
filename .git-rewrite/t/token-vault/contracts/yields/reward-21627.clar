(define-public (reward-21627 (recipient principal))
  (ok (as-contract (stx-transfer? u21627 tx-sender recipient))))
