(define-public (reward-21658 (recipient principal))
  (ok (as-contract (stx-transfer? u21658 tx-sender recipient))))
