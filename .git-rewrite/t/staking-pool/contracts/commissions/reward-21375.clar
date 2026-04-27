(define-public (reward-21375 (recipient principal))
  (ok (as-contract (stx-transfer? u21375 tx-sender recipient))))
