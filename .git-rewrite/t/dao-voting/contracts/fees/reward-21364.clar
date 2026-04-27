(define-public (reward-21364 (recipient principal))
  (ok (as-contract (stx-transfer? u21364 tx-sender recipient))))
