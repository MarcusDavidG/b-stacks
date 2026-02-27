(define-public (reward-21548 (recipient principal))
  (ok (as-contract (stx-transfer? u21548 tx-sender recipient))))
