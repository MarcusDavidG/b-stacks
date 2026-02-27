(define-public (reward-21606 (recipient principal))
  (ok (as-contract (stx-transfer? u21606 tx-sender recipient))))
