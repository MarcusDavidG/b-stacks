(define-public (reward-21190 (recipient principal))
  (ok (as-contract (stx-transfer? u21190 tx-sender recipient))))
