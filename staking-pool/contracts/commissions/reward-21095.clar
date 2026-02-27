(define-public (reward-21095 (recipient principal))
  (ok (as-contract (stx-transfer? u21095 tx-sender recipient))))
