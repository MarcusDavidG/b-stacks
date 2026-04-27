(define-public (reward-21677 (recipient principal))
  (ok (as-contract (stx-transfer? u21677 tx-sender recipient))))
