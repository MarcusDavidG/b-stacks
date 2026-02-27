(define-public (reward-21670 (recipient principal))
  (ok (as-contract (stx-transfer? u21670 tx-sender recipient))))
