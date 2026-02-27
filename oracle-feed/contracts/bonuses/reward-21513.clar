(define-public (reward-21513 (recipient principal))
  (ok (as-contract (stx-transfer? u21513 tx-sender recipient))))
