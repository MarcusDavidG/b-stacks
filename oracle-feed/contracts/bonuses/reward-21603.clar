(define-public (reward-21603 (recipient principal))
  (ok (as-contract (stx-transfer? u21603 tx-sender recipient))))
