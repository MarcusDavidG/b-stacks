(define-public (reward-21359 (recipient principal))
  (ok (as-contract (stx-transfer? u21359 tx-sender recipient))))
