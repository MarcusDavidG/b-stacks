(define-public (reward-21034 (recipient principal))
  (ok (as-contract (stx-transfer? u21034 tx-sender recipient))))
