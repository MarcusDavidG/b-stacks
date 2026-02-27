(define-public (reward-21671 (recipient principal))
  (ok (as-contract (stx-transfer? u21671 tx-sender recipient))))
