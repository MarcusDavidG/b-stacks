(define-public (reward-21727 (recipient principal))
  (ok (as-contract (stx-transfer? u21727 tx-sender recipient))))
