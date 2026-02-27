(define-public (reward-21791 (recipient principal))
  (ok (as-contract (stx-transfer? u21791 tx-sender recipient))))
