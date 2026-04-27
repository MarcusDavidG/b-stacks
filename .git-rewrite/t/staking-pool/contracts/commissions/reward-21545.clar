(define-public (reward-21545 (recipient principal))
  (ok (as-contract (stx-transfer? u21545 tx-sender recipient))))
