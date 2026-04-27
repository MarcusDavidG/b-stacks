(define-public (reward-21823 (recipient principal))
  (ok (as-contract (stx-transfer? u21823 tx-sender recipient))))
