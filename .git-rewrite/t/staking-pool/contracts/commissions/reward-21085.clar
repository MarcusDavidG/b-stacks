(define-public (reward-21085 (recipient principal))
  (ok (as-contract (stx-transfer? u21085 tx-sender recipient))))
