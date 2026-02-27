(define-public (reward-21431 (recipient principal))
  (ok (as-contract (stx-transfer? u21431 tx-sender recipient))))
