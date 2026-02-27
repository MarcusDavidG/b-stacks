(define-public (reward-21120 (recipient principal))
  (ok (as-contract (stx-transfer? u21120 tx-sender recipient))))
