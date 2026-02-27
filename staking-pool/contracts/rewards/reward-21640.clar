(define-public (reward-21640 (recipient principal))
  (ok (as-contract (stx-transfer? u21640 tx-sender recipient))))
