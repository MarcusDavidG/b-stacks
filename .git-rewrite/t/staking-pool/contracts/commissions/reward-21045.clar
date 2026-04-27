(define-public (reward-21045 (recipient principal))
  (ok (as-contract (stx-transfer? u21045 tx-sender recipient))))
