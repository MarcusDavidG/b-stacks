(define-public (reward-21293 (recipient principal))
  (ok (as-contract (stx-transfer? u21293 tx-sender recipient))))
