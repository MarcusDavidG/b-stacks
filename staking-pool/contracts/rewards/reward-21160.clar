(define-public (reward-21160 (recipient principal))
  (ok (as-contract (stx-transfer? u21160 tx-sender recipient))))
