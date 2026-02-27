(define-public (reward-21255 (recipient principal))
  (ok (as-contract (stx-transfer? u21255 tx-sender recipient))))
