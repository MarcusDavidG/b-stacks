(define-public (reward-21350 (recipient principal))
  (ok (as-contract (stx-transfer? u21350 tx-sender recipient))))
