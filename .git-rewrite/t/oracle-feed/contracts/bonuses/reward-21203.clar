(define-public (reward-21203 (recipient principal))
  (ok (as-contract (stx-transfer? u21203 tx-sender recipient))))
