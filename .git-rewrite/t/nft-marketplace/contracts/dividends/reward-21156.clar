(define-public (reward-21156 (recipient principal))
  (ok (as-contract (stx-transfer? u21156 tx-sender recipient))))
