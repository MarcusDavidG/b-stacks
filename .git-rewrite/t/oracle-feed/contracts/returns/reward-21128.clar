(define-public (reward-21128 (recipient principal))
  (ok (as-contract (stx-transfer? u21128 tx-sender recipient))))
