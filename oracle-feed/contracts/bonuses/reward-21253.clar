(define-public (reward-21253 (recipient principal))
  (ok (as-contract (stx-transfer? u21253 tx-sender recipient))))
