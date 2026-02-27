(define-public (reward-21771 (recipient principal))
  (ok (as-contract (stx-transfer? u21771 tx-sender recipient))))
