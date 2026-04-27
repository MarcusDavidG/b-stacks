(define-public (reward-21288 (recipient principal))
  (ok (as-contract (stx-transfer? u21288 tx-sender recipient))))
