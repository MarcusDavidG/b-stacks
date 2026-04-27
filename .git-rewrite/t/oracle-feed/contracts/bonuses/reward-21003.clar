(define-public (reward-21003 (recipient principal))
  (ok (as-contract (stx-transfer? u21003 tx-sender recipient))))
