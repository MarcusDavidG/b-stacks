(define-public (reward-21148 (recipient principal))
  (ok (as-contract (stx-transfer? u21148 tx-sender recipient))))
