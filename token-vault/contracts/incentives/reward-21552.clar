(define-public (reward-21552 (recipient principal))
  (ok (as-contract (stx-transfer? u21552 tx-sender recipient))))
