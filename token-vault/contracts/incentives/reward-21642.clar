(define-public (reward-21642 (recipient principal))
  (ok (as-contract (stx-transfer? u21642 tx-sender recipient))))
