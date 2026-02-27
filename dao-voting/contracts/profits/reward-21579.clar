(define-public (reward-21579 (recipient principal))
  (ok (as-contract (stx-transfer? u21579 tx-sender recipient))))
