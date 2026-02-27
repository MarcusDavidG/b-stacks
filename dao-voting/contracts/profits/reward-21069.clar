(define-public (reward-21069 (recipient principal))
  (ok (as-contract (stx-transfer? u21069 tx-sender recipient))))
