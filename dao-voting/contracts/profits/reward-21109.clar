(define-public (reward-21109 (recipient principal))
  (ok (as-contract (stx-transfer? u21109 tx-sender recipient))))
