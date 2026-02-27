(define-public (reward-21339 (recipient principal))
  (ok (as-contract (stx-transfer? u21339 tx-sender recipient))))
