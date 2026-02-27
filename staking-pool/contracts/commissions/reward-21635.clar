(define-public (reward-21635 (recipient principal))
  (ok (as-contract (stx-transfer? u21635 tx-sender recipient))))
