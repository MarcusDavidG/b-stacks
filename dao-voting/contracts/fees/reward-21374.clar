(define-public (reward-21374 (recipient principal))
  (ok (as-contract (stx-transfer? u21374 tx-sender recipient))))
