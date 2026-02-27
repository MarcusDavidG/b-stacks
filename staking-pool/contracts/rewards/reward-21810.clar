(define-public (reward-21810 (recipient principal))
  (ok (as-contract (stx-transfer? u21810 tx-sender recipient))))
