(define-public (reward-21457 (recipient principal))
  (ok (as-contract (stx-transfer? u21457 tx-sender recipient))))
