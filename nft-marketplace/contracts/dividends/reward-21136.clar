(define-public (reward-21136 (recipient principal))
  (ok (as-contract (stx-transfer? u21136 tx-sender recipient))))
