(define-public (reward-21385 (recipient principal))
  (ok (as-contract (stx-transfer? u21385 tx-sender recipient))))
