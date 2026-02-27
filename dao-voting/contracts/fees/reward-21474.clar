(define-public (reward-21474 (recipient principal))
  (ok (as-contract (stx-transfer? u21474 tx-sender recipient))))
