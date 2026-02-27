(define-public (reward-21543 (recipient principal))
  (ok (as-contract (stx-transfer? u21543 tx-sender recipient))))
