(define-public (reward-21318 (recipient principal))
  (ok (as-contract (stx-transfer? u21318 tx-sender recipient))))
