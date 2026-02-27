(define-public (reward-21116 (recipient principal))
  (ok (as-contract (stx-transfer? u21116 tx-sender recipient))))
