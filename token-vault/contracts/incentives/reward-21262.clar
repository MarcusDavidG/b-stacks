(define-public (reward-21262 (recipient principal))
  (ok (as-contract (stx-transfer? u21262 tx-sender recipient))))
