(define-public (reward-21862 (recipient principal))
  (ok (as-contract (stx-transfer? u21862 tx-sender recipient))))
