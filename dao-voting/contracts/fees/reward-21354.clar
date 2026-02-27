(define-public (reward-21354 (recipient principal))
  (ok (as-contract (stx-transfer? u21354 tx-sender recipient))))
