(define-public (reward-21820 (recipient principal))
  (ok (as-contract (stx-transfer? u21820 tx-sender recipient))))
