(define-public (reward-21235 (recipient principal))
  (ok (as-contract (stx-transfer? u21235 tx-sender recipient))))
