(define-public (reward-21800 (recipient principal))
  (ok (as-contract (stx-transfer? u21800 tx-sender recipient))))
