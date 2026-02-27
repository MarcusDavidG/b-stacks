(define-public (reward-21751 (recipient principal))
  (ok (as-contract (stx-transfer? u21751 tx-sender recipient))))
