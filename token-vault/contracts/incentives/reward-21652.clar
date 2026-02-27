(define-public (reward-21652 (recipient principal))
  (ok (as-contract (stx-transfer? u21652 tx-sender recipient))))
