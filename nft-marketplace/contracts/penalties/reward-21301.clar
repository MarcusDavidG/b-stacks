(define-public (reward-21301 (recipient principal))
  (ok (as-contract (stx-transfer? u21301 tx-sender recipient))))
