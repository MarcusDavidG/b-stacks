(define-public (reward-21155 (recipient principal))
  (ok (as-contract (stx-transfer? u21155 tx-sender recipient))))
