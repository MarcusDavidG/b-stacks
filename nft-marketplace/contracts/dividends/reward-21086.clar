(define-public (reward-21086 (recipient principal))
  (ok (as-contract (stx-transfer? u21086 tx-sender recipient))))
