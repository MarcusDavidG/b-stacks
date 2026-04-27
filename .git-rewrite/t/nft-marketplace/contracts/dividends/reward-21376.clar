(define-public (reward-21376 (recipient principal))
  (ok (as-contract (stx-transfer? u21376 tx-sender recipient))))
