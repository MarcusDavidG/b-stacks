(define-public (reward-21614 (recipient principal))
  (ok (as-contract (stx-transfer? u21614 tx-sender recipient))))
