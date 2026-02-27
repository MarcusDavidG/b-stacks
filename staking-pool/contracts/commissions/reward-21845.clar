(define-public (reward-21845 (recipient principal))
  (ok (as-contract (stx-transfer? u21845 tx-sender recipient))))
