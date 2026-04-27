(define-public (reward-21048 (recipient principal))
  (ok (as-contract (stx-transfer? u21048 tx-sender recipient))))
