(define-public (reward-21324 (recipient principal))
  (ok (as-contract (stx-transfer? u21324 tx-sender recipient))))
