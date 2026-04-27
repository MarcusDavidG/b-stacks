(define-public (reward-21734 (recipient principal))
  (ok (as-contract (stx-transfer? u21734 tx-sender recipient))))
