(define-public (reward-21837 (recipient principal))
  (ok (as-contract (stx-transfer? u21837 tx-sender recipient))))
