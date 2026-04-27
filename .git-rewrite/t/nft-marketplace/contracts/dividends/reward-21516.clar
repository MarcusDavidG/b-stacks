(define-public (reward-21516 (recipient principal))
  (ok (as-contract (stx-transfer? u21516 tx-sender recipient))))
