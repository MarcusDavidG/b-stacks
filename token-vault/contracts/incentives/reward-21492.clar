(define-public (reward-21492 (recipient principal))
  (ok (as-contract (stx-transfer? u21492 tx-sender recipient))))
